# Sharp Edges: OpenGL/X11 Issues on Mac ARM64

## Problem Summary

When running MuJoCo in Docker containers on Mac ARM64 (Apple Silicon), the visual simulation GUI fails due to OpenGL rendering limitations. While X11 forwarding works for basic GUI apps, OpenGL applications like MuJoCo's `simulate` cannot render properly.

## Error Messages

### Initial X11 Issues
```
Error: Can't open display: host.docker.internal:0
Authorization required, but no authorization protocol specified
```

### OpenGL Rendering Issues
```
libGL error: No matching fbConfigs or visuals found
libGL error: failed to load driver: swrast
ERROR: could not create window
```

## Root Cause

1. **X11 Forwarding Works**: Basic X11 apps (like `xeyes`) can display on Mac through XQuartz
2. **OpenGL Software Rendering Fails**: Mesa software renderer (`swrast`) doesn't work properly in ARM64 Docker containers on Mac
3. **No Hardware GPU Passthrough**: Docker Desktop for Mac doesn't support GPU passthrough for OpenGL

## Attempted Solutions

### 1. X11 Setup (Partially Successful)
- ✅ Installed XQuartz with TCP listening enabled
- ✅ Configured X11 authorization
- ✅ Basic X11 apps work (xeyes, etc.)
- ❌ OpenGL apps still fail

### 2. OpenGL Software Rendering (Failed)
- Installed Mesa packages: `libgl1-mesa-glx`, `libgl1-mesa-dri`, `mesa-utils`
- Set environment variables: `LIBGL_ALWAYS_SOFTWARE=1`, `MESA_GL_VERSION_OVERRIDE=3.3`
- Tried indirect rendering: `LIBGL_ALWAYS_INDIRECT=1`
- Result: Still fails with "failed to load driver: swrast"

### 3. Additional Mesa Packages (Failed)
- Installed: `mesa-va-drivers`, `mesa-vdpau-drivers`, `mesa-vulkan-drivers`
- Result: No improvement in OpenGL rendering

## Current Status

### What Works ✅
- MuJoCo builds successfully
- X11 forwarding for basic GUI apps
- MuJoCo core library functions (for FFI bindings)
- Shared libraries (.so files) are created

### What Doesn't Work ❌
- MuJoCo's visual simulation GUI
- Any OpenGL-based applications in Docker on Mac ARM64

## Impact on Project

**For FFI Binding Development**: This limitation is actually **acceptable** because:
- Core MuJoCo functionality works
- Headers and libraries are available
- Function calls can be tested programmatically
- Visual simulation is not required for FFI testing

## Alternative Strategies

1. **Headless Testing**: Use MuJoCo programmatically without GUI
2. **Remote Development**: Use a Linux machine with proper GPU support
3. **Different Container Strategy**: Use native Mac development (outside Docker)
4. **Mock Testing**: Create mock MuJoCo functions for development

## Lessons Learned

- X11 forwarding on Mac ARM64 works for basic apps but not OpenGL
- Docker Desktop for Mac has fundamental limitations with GPU access
- Software rendering in ARM64 containers is unreliable
- Focus on core functionality rather than visual simulation for development

## References

- [XQuartz configuration for Docker](https://www.xquartz.org/)
- [Mesa software rendering issues on ARM64](https://mesa3d.org/) 