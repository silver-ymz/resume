#import "@preview/fontawesome:0.5.0": *

#let cv-color = rgb("#284967")
#set page(margin: (x: 0.9cm, y: 1.0cm))
#set text(font: "Noto Sans CJK SC", size: 10pt)
#set par(justify: true)
#let chiline = {
  v(-8pt)
  line(stroke: cv-color, length: 100%)
  v(-2pt)
}
#show "|": text(gray, " | ")
#show heading.where(level: 1): it => text(fill: rgb("#222222"), size: 20pt, it) + v(5pt)
#show heading.where(level: 2): it => text(cv-color, it) + chiline
#let bbold(t) = text(fill: rgb("#222222"), weight: "bold", t)
#let item2(a, b) = grid(
  columns: (50%, 1fr),
  align: (left, right),
  text(fill: rgb("#222222"), weight: "bold", a),
  text(fill: rgb("#222222"), weight: "bold", b),
)
#let item(a, b, c) = grid(
  columns: (20%, 1fr, 30%),
  align: (left, center, right),
  text(fill: rgb("#222222"), weight: "bold", a),
  text(rgb("#222222"), weight: "bold", b),
  text(rgb("#222222"), weight: "bold", c),
)

// -------------------------------------------------------------------
// 个人简历正文
// -------------------------------------------------------------------


#grid(
  columns: (1fr, auto),
  align(center)[
    = 尹铭卓

    #set text(rgb("#333333"))

    // 某某岁 | 某某成员 | 某某地区
    
    #fa-icon("envelope") ymzymz\@stu.xjtu.edu.cn | #fa-icon("github") #link("https://github.com/silver-ymz")[github.com/silver-ymz] | #fa-icon("phone") 17382084112 | #fa-icon("weixin") ymz31415926535
  ],
)

\

#set text(rgb("#444444"))

== 教育背景

#item2[西安交通大学 计算机科学与技术(试验班)][本科生]

*专业成绩：* 均分 86.27/100 #h(1fr) 2022.09 \~ 2026.07

*主修课程：* 计算机系统导论(97) 形式语言与编译(93) 操作系统(90) 计算机网络(89) \
线性代数与解析几何(95) 离散数学(94) 优化方法基础(91) 概率统计与随机过程(89)

== 科研经历

#item2[西安交通大学 人工智能与机器人研究所][2023.09 \~ 至今]

在任鹏举和夏天教授指导下，研究*软件预取优化*和*预取器侧信道攻击*。

许多 HPC workloads 严重受限于内存延迟, 而软件预取技术能通过提前预取数据到高速缓存来减少内存访问延迟。在研究中, 我们寻找到了一种新的预取策略, 并开发了一个 llvm pass 来自动插入预取指令, 提高缓存局部性。

以第三作者发表论文:
\"Magellan: A High-Performance Loop-Guided Prefetcher for
Indirect Memory Access\", International Symposium on Computer Architecture (ISCA). 2025. 

== 实习经历

#item2[#link("https://github.com/tensorchord")[Tensorchord] Intern][2023.10 \~ 至今]
- 参与 *#link("https://github.com/tensorchord/pgvecto.rs")[pgvecto.rs]* 的早期开发, 一个提供*向量相似性*搜索功能的 Postgresql 插件. 我实现了 sparse vector 和 binary vector 的索引, 并研究了最新的向量索引算法.
- 参与 *#link("https://github.com/tensorchord/VectorChord-bm25")[VectorChord-bm25]* 和 *#link("https://github.com/tensorchord/pg_tokenizer.rs")[pg_tokenizer.rs]* 的开发, 提供 *bm25 ranking* 和 *tokenizer* 功能的 Postgresql 插件. 我负责从 0 开始完成大部分开发工作, 其中实现了完整的 Block-WeakAnd 算法.
- 相关技能: Database, Rust, vector index, bm25 ranking, simd

#item2[#link("https://github.com/apache/opendal")[Apache OpenDAL] PPMC Member][2023.04 \~ 至今]
- Apache OpenDAL 是一个开放数据访问层，实现与各种存储服务的无缝交互。
- 我参与了 sftp, gcs 相关功能的实现, 以及 c++ binding 和 haskell binding 的开发. 在社区推荐下, 我成为了项目的 PPMC 成员.
- 相关技能: Rust, object storage, C++, Haskell

== 个人项目与课程实验

*#link("https://github.com/NullRefMaster/Suicide")[The Second Persona]*: 一个使用 Unity2D 开发的平台跳跃解谜游戏

*#link("https://github.com/silver-ymz/mini-lsm")[Mini-LSM]*: 基于 LSM-Tree 的简单键值存储引擎，在提供基本框架的基础上支持插入、查询、删除等操作, 支持 Minifest, WAL, MVCC Transaction 等特性

*Bustub*: CMU 15-445 Database Lab, 关系型数据库. 在提供基本框架的基础上实现了 Buffer Pool Manager, B+Tree Index, Query Execution, Concurrency Control 四个功能

*#link("https://github.com/silver-ymz/sysy")[SysY Compiler]*: PKU Compiler Lab. SysY 是一个简单的 C 语言子集, 该项目实现了 SysY 到 RISC-V 汇编的编译器, 支持基本的语法分析、语义分析、中间代码生成、寄存器分配等功能

*#link("https://github.com/silver-ymz/xv6-labs-2023")[xv6-labs]*: MIT Operating System Lab. 实现了 Utilities, System calls, Page tables, Traps, Copy on-write, Multithreading, network driver, Lock, File system, mmap 等功能

*RCore OS*: Operating System Lab. 实现了页表, 进程, 文件系统, IPC, 并发, IO 等模块

*Minnow*: Stanford CS 144 Networking Lab, 简易的 TCP/IP 协议栈. 支持基本的 IP、ICMP、ARP、UDP、TCP 协议，实现了基本的路由、转发、连接管理等功能。

== 技能特长

- *语言能力*: CET-4 546, CET-6 492
- *编程语言* (熟练度排序): Rust, C/C++, Python 3, Haskell, JavaScript, Java, C\#, Coq
