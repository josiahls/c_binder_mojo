/* SPDX-License-Identifier: BSD-3-Clause
 * Copyright(c) 2010-2014 Intel Corporation.
 * Copyright 2014 6WIND S.A.
 */

 /** @note: c_binder_mojo note: This file is included from the DPDK repository
  * at https://github.com/DPDK/dpdk due to the complex struct definition being a good test.
  * comments have been removed.
  */

#ifndef _RTE_MBUF_CORE_H_
#define _RTE_MBUF_CORE_H_


#include <stdalign.h>
#include <stdint.h>

// c_binder_note: Included since this is imported from one of the other headers.
#include <limits.h>

// c_binder_note: Copied from rte_stdatomic.h to keep everything in one file
#include <stdatomic.h>
#define RTE_ATOMIC(type) _Atomic(type)

// c_binder_note: Copied from rte_build_config.h to keep everything in one file
#define RTE_CACHE_LINE_SIZE 128

// c_binder_note: Copied from rte_common.h to keep everything in one file
#define __rte_cache_aligned __rte_aligned(RTE_CACHE_LINE_SIZE)
#define __rte_aligned(a) __attribute__((__aligned__(a)))
#define RTE_CACHE_LINE_MIN_SIZE 64


// #include <rte_byteorder.h> // c_binder_note: Commented this out and any references to simplify the unit test
// #include <rte_stdatomic.h>  // c_binder_note: Commented this out and any references to simplify the unit test

#ifdef __cplusplus
extern "C" {
#endif


#define RTE_MBUF_F_RX_VLAN          (1ULL << 0)
#define RTE_MBUF_F_RX_RSS_HASH      (1ULL << 1)
#define RTE_MBUF_F_RX_FDIR          (1ULL << 2)
#define RTE_MBUF_F_RX_OUTER_IP_CKSUM_BAD (1ULL << 5)
#define RTE_MBUF_F_RX_VLAN_STRIPPED (1ULL << 6)
#define RTE_MBUF_F_RX_IP_CKSUM_MASK ((1ULL << 4) | (1ULL << 7))
#define RTE_MBUF_F_RX_IP_CKSUM_UNKNOWN 0
#define RTE_MBUF_F_RX_IP_CKSUM_BAD     (1ULL << 4)
#define RTE_MBUF_F_RX_IP_CKSUM_GOOD    (1ULL << 7)
#define RTE_MBUF_F_RX_IP_CKSUM_NONE    ((1ULL << 4) | (1ULL << 7))
#define RTE_MBUF_F_RX_L4_CKSUM_MASK ((1ULL << 3) | (1ULL << 8))
#define RTE_MBUF_F_RX_L4_CKSUM_UNKNOWN 0
#define RTE_MBUF_F_RX_L4_CKSUM_BAD     (1ULL << 3)
#define RTE_MBUF_F_RX_L4_CKSUM_GOOD    (1ULL << 8)
#define RTE_MBUF_F_RX_L4_CKSUM_NONE    ((1ULL << 3) | (1ULL << 8))
#define RTE_MBUF_F_RX_IEEE1588_PTP  (1ULL << 9)
#define RTE_MBUF_F_RX_IEEE1588_TMST (1ULL << 10)
#define RTE_MBUF_F_RX_FDIR_ID       (1ULL << 13)
#define RTE_MBUF_F_RX_FDIR_FLX      (1ULL << 14)
#define RTE_MBUF_F_RX_QINQ_STRIPPED (1ULL << 15)
#define RTE_MBUF_F_RX_LRO           (1ULL << 16)
#define RTE_MBUF_F_RX_SEC_OFFLOAD	(1ULL << 18)
#define RTE_MBUF_F_RX_SEC_OFFLOAD_FAILED	(1ULL << 19)
#define RTE_MBUF_F_RX_QINQ          (1ULL << 20)
#define RTE_MBUF_F_RX_OUTER_L4_CKSUM_MASK	((1ULL << 21) | (1ULL << 22))
#define RTE_MBUF_F_RX_OUTER_L4_CKSUM_UNKNOWN	0
#define RTE_MBUF_F_RX_OUTER_L4_CKSUM_BAD	(1ULL << 21)
#define RTE_MBUF_F_RX_OUTER_L4_CKSUM_GOOD	(1ULL << 22)
#define RTE_MBUF_F_RX_OUTER_L4_CKSUM_INVALID	((1ULL << 21) | (1ULL << 22))
#define RTE_MBUF_F_FIRST_FREE (1ULL << 23)
#define RTE_MBUF_F_LAST_FREE (1ULL << 40)
#define RTE_MBUF_F_TX_OUTER_UDP_CKSUM     (1ULL << 41)
#define RTE_MBUF_F_TX_UDP_SEG	(1ULL << 42)
#define RTE_MBUF_F_TX_SEC_OFFLOAD	(1ULL << 43)
#define RTE_MBUF_F_TX_MACSEC        (1ULL << 44)
#define RTE_MBUF_F_TX_TUNNEL_VXLAN   (0x1ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_GRE     (0x2ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_IPIP    (0x3ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_GENEVE  (0x4ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_MPLSINUDP (0x5ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_VXLAN_GPE (0x6ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_GTP       (0x7ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_ESP       (0x8ULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_IP (0xDULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_UDP (0xEULL << 45)
#define RTE_MBUF_F_TX_TUNNEL_MASK    (0xFULL << 45)
#define RTE_MBUF_F_TX_QINQ        (1ULL << 49)
#define RTE_MBUF_F_TX_TCP_SEG       (1ULL << 50)
#define RTE_MBUF_F_TX_IEEE1588_TMST (1ULL << 51)
#define RTE_MBUF_F_TX_L4_NO_CKSUM   (0ULL << 52)
#define RTE_MBUF_F_TX_TCP_CKSUM     (1ULL << 52)
#define RTE_MBUF_F_TX_SCTP_CKSUM    (2ULL << 52)
#define RTE_MBUF_F_TX_UDP_CKSUM     (3ULL << 52)
#define RTE_MBUF_F_TX_L4_MASK       (3ULL << 52)
#define RTE_MBUF_F_TX_IP_CKSUM      (1ULL << 54)
#define RTE_MBUF_F_TX_IPV4          (1ULL << 55)
#define RTE_MBUF_F_TX_IPV6          (1ULL << 56)
#define RTE_MBUF_F_TX_VLAN          (1ULL << 57)
#define RTE_MBUF_F_TX_OUTER_IP_CKSUM   (1ULL << 58)
#define RTE_MBUF_F_TX_OUTER_IPV4   (1ULL << 59)
#define RTE_MBUF_F_TX_OUTER_IPV6    (1ULL << 60)
#define RTE_MBUF_F_TX_OFFLOAD_MASK (    \
		RTE_MBUF_F_TX_OUTER_IPV6 |	 \
		RTE_MBUF_F_TX_OUTER_IPV4 |	 \
		RTE_MBUF_F_TX_OUTER_IP_CKSUM |  \
		RTE_MBUF_F_TX_VLAN |        \
		RTE_MBUF_F_TX_IPV6 |		 \
		RTE_MBUF_F_TX_IPV4 |		 \
		RTE_MBUF_F_TX_IP_CKSUM |        \
		RTE_MBUF_F_TX_L4_MASK |         \
		RTE_MBUF_F_TX_IEEE1588_TMST |	 \
		RTE_MBUF_F_TX_TCP_SEG |         \
		RTE_MBUF_F_TX_QINQ |        \
		RTE_MBUF_F_TX_TUNNEL_MASK |	 \
		RTE_MBUF_F_TX_MACSEC |		 \
		RTE_MBUF_F_TX_SEC_OFFLOAD |	 \
		RTE_MBUF_F_TX_UDP_SEG |	 \
		RTE_MBUF_F_TX_OUTER_UDP_CKSUM)
#define RTE_MBUF_F_EXTERNAL    (1ULL << 61)
#define RTE_MBUF_F_INDIRECT    (1ULL << 62)
#define RTE_MBUF_PRIV_ALIGN 8
#define	RTE_MBUF_DEFAULT_DATAROOM	2048
#define	RTE_MBUF_DEFAULT_BUF_SIZE	\
	(RTE_MBUF_DEFAULT_DATAROOM + RTE_PKTMBUF_HEADROOM)

struct rte_mbuf_sched {
	uint32_t queue_id;
	uint8_t traffic_class;
	uint8_t color;
	uint16_t reserved;
};

enum {
	RTE_MBUF_L2_LEN_BITS = 7,
	RTE_MBUF_L3_LEN_BITS = 9,
	RTE_MBUF_L4_LEN_BITS = 8,
	RTE_MBUF_TSO_SEGSZ_BITS = 16,
	RTE_MBUF_OUTL3_LEN_BITS = 9,
	RTE_MBUF_OUTL2_LEN_BITS = 7,
	RTE_MBUF_TXOFLD_UNUSED_BITS = sizeof(uint64_t) * CHAR_BIT -
		RTE_MBUF_L2_LEN_BITS -
		RTE_MBUF_L3_LEN_BITS -
		RTE_MBUF_L4_LEN_BITS -
		RTE_MBUF_TSO_SEGSZ_BITS -
		RTE_MBUF_OUTL3_LEN_BITS -
		RTE_MBUF_OUTL2_LEN_BITS,
#if RTE_BYTE_ORDER == RTE_BIG_ENDIAN
	RTE_MBUF_L2_LEN_OFS =
		sizeof(uint64_t) * CHAR_BIT - RTE_MBUF_L2_LEN_BITS,
	RTE_MBUF_L3_LEN_OFS = RTE_MBUF_L2_LEN_OFS - RTE_MBUF_L3_LEN_BITS,
	RTE_MBUF_L4_LEN_OFS = RTE_MBUF_L3_LEN_OFS - RTE_MBUF_L4_LEN_BITS,
	RTE_MBUF_TSO_SEGSZ_OFS = RTE_MBUF_L4_LEN_OFS - RTE_MBUF_TSO_SEGSZ_BITS,
	RTE_MBUF_OUTL3_LEN_OFS =
		RTE_MBUF_TSO_SEGSZ_OFS - RTE_MBUF_OUTL3_LEN_BITS,
	RTE_MBUF_OUTL2_LEN_OFS =
		RTE_MBUF_OUTL3_LEN_OFS - RTE_MBUF_OUTL2_LEN_BITS,
	RTE_MBUF_TXOFLD_UNUSED_OFS =
		RTE_MBUF_OUTL2_LEN_OFS - RTE_MBUF_TXOFLD_UNUSED_BITS,
#else
	RTE_MBUF_L2_LEN_OFS = 0,
	RTE_MBUF_L3_LEN_OFS = RTE_MBUF_L2_LEN_OFS + RTE_MBUF_L2_LEN_BITS,
	RTE_MBUF_L4_LEN_OFS = RTE_MBUF_L3_LEN_OFS + RTE_MBUF_L3_LEN_BITS,
	RTE_MBUF_TSO_SEGSZ_OFS = RTE_MBUF_L4_LEN_OFS + RTE_MBUF_L4_LEN_BITS,
	RTE_MBUF_OUTL3_LEN_OFS =
		RTE_MBUF_TSO_SEGSZ_OFS + RTE_MBUF_TSO_SEGSZ_BITS,
	RTE_MBUF_OUTL2_LEN_OFS =
		RTE_MBUF_OUTL3_LEN_OFS + RTE_MBUF_OUTL3_LEN_BITS,
	RTE_MBUF_TXOFLD_UNUSED_OFS =
		RTE_MBUF_OUTL2_LEN_OFS + RTE_MBUF_OUTL2_LEN_BITS,
#endif
};

struct __rte_cache_aligned rte_mbuf {
	void *buf_addr;
#if RTE_IOVA_IN_MBUF
	alignas(sizeof(rte_iova_t)) rte_iova_t buf_iova;
#else
	struct rte_mbuf *next;
#endif
	union {
		uint64_t rearm_data[1];
		__extension__
		struct {
			uint16_t data_off;

			RTE_ATOMIC(uint16_t) refcnt;

			uint16_t nb_segs;

			uint16_t port;
		};
	};

	uint64_t ol_flags; 

	union {
		void *rx_descriptor_fields1[24 / sizeof(void *)];
		__extension__
		struct {
			union {
				uint32_t packet_type; 
				__extension__
				struct {
					uint8_t l2_type:4;
					uint8_t l3_type:4; 
					uint8_t l4_type:4; 
					uint8_t tun_type:4; 
					union {
						uint8_t inner_esp_next_proto;

						__extension__
						struct {
							uint8_t inner_l2_type:4;
							uint8_t inner_l3_type:4;
						};
					};
					uint8_t inner_l4_type:4; 
				};
			};

			uint32_t pkt_len;
			uint16_t data_len;
			uint16_t vlan_tci;

			union {
				union {
					uint32_t rss;
					struct {
						union {
							struct {
								uint16_t hash;
								uint16_t id;
							};
								uint32_t lo;
							};
							uint32_t hi;
						} fdir;
						struct rte_mbuf_sched sched;
					struct {
						uint32_t reserved1;
						uint16_t reserved2;
							uint16_t txq;
						} txadapter;
						uint32_t usr;
				} hash;
			};

			uint16_t vlan_tci_outer;

			uint16_t buf_len;
		};
	};

	struct rte_mempool *pool;

#if RTE_IOVA_IN_MBUF
	alignas(RTE_CACHE_LINE_MIN_SIZE)
	struct rte_mbuf *next;
#else
	alignas(RTE_CACHE_LINE_MIN_SIZE)
	uint64_t dynfield2;
#endif

	union {
		uint64_t tx_offload;
		__extension__
		struct {
			uint64_t l2_len:RTE_MBUF_L2_LEN_BITS;
			uint64_t l3_len:RTE_MBUF_L3_LEN_BITS;
			uint64_t l4_len:RTE_MBUF_L4_LEN_BITS;
			uint64_t tso_segsz:RTE_MBUF_TSO_SEGSZ_BITS;

			uint64_t outer_l3_len:RTE_MBUF_OUTL3_LEN_BITS;
			uint64_t outer_l2_len:RTE_MBUF_OUTL2_LEN_BITS;

		};
	};

	struct rte_mbuf_ext_shared_info *shinfo;

	uint16_t priv_size;

	uint16_t timesync;

	uint32_t dynfield1[9];
};

typedef void (*rte_mbuf_extbuf_free_callback_t)(void *addr, void *opaque);

struct rte_mbuf_ext_shared_info {
	rte_mbuf_extbuf_free_callback_t free_cb;
	void *fcb_opaque;
	RTE_ATOMIC(uint16_t) refcnt;
};

#define RTE_MBUF_MAX_NB_SEGS	UINT16_MAX

#define RTE_MBUF_CLONED(mb)     ((mb)->ol_flags & RTE_MBUF_F_INDIRECT)

#define RTE_MBUF_HAS_EXTBUF(mb) ((mb)->ol_flags & RTE_MBUF_F_EXTERNAL)

#define RTE_MBUF_DIRECT(mb) \
	(!((mb)->ol_flags & (RTE_MBUF_F_INDIRECT | RTE_MBUF_F_EXTERNAL)))

#define RTE_MBUF_PORT_INVALID UINT16_MAX
#define MBUF_INVALID_PORT RTE_MBUF_PORT_INVALID

#define rte_pktmbuf_mtod_offset(m, t, o)	\
	((t)(void *)((char *)(m)->buf_addr + (m)->data_off + (o)))

#define rte_pktmbuf_mtod(m, t) rte_pktmbuf_mtod_offset(m, t, 0)

#define rte_pktmbuf_iova_offset(m, o) \
	(rte_iova_t)(rte_mbuf_iova_get(m) + (m)->data_off + (o))

#define rte_pktmbuf_iova(m) rte_pktmbuf_iova_offset(m, 0)

#ifdef __cplusplus
}
#endif

#endif /* _RTE_MBUF_CORE_H_ */
