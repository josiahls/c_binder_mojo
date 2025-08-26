struct ParseMode:
    alias NEXT_ARG = 0
    alias NEXT_NAMED_ARG_VALUE = 1
    alias ACCUMULATE_ARG_VALUE = 2


@fieldwise_init
struct ArgParser:
    var args: VariadicList[StaticString]
    var positional_args: List[String]
    var named_args: List[String]

    @staticmethod
    fn is_named_arg(v: String) -> Bool:
        return v.startswith("--")

    @staticmethod
    fn get_named_arg_name(v: String) -> String:
        return String(v.removeprefix("--"))

    fn parse(self) raises -> Dict[String, String]:
        parsed_args: Dict[String, String] = {}
        positional_arg_idx = 0
        named_arg_key = ""
        mode = ParseMode.NEXT_ARG
        skipped_first_arg = False

        for arg in self.args:
            if not skipped_first_arg:
                skipped_first_arg = True
                continue

            if (
                self.is_named_arg(arg)
                and mode == ParseMode.ACCUMULATE_ARG_VALUE
                and self.get_named_arg_name(arg) in self.named_args
            ):
                mode = ParseMode.NEXT_ARG

            # Some named args don't have values, so the next token could be another arg.
            if mode == ParseMode.NEXT_ARG or (
                self.is_named_arg(arg)
                and mode != ParseMode.ACCUMULATE_ARG_VALUE
            ):
                if self.is_named_arg(arg):
                    named_arg_key = self.get_named_arg_name(arg)
                    if named_arg_key not in self.named_args:
                        raise Error("Unknown named argument: " + named_arg_key)
                    parsed_args[named_arg_key] = ""
                    mode = ParseMode.NEXT_NAMED_ARG_VALUE
                    if named_arg_key == "extra_args":
                        mode = ParseMode.ACCUMULATE_ARG_VALUE
                else:
                    # Is positional arg
                    if positional_arg_idx >= len(self.positional_args):
                        raise Error(
                            "Too many positional arguments. Expected "
                            + String(len(self.positional_args))
                            + " but got "
                            + String(positional_arg_idx + 1)
                            + " for arg: "
                            + arg
                        )
                    parsed_args[self.positional_args[positional_arg_idx]] = arg
                    positional_arg_idx += 1
                    mode = ParseMode.NEXT_ARG
            elif mode == ParseMode.NEXT_NAMED_ARG_VALUE:
                parsed_args[named_arg_key] = arg
                mode = ParseMode.NEXT_ARG
            elif mode == ParseMode.ACCUMULATE_ARG_VALUE:
                parsed_args["extra_args"] += " " + arg
                mode = ParseMode.ACCUMULATE_ARG_VALUE

        for arg in self.positional_args:
            if arg not in parsed_args:
                raise Error("Missing positional argument: " + arg)

        return parsed_args
