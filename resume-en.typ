#import "@preview/fontawesome:0.5.0": *

// -------------------------------------------------------------------
// [1] Global Style Definitions
// -------------------------------------------------------------------

#let cv-color = rgb("#284967")
#set page(margin: (x: 0.9cm, y: 1.0cm))
#set text(font: "libertinus serif", size: 10pt)
#set par(justify: true, leading: 0.8em)
#let chiline = {
  v(-8pt)
  line(stroke: cv-color, length: 100%)
  v(-2pt)
}
#show "|": text(gray, " | ")
#show heading.where(level: 1): it => text(fill: rgb("#222222"), size: 20pt, it) + v(5pt)
#show heading.where(level: 2): it => text(cv-color, it) + chiline
#let bbold(t) = text(fill: rgb("#222222"), weight: "bold", t)
#let item(a, b, c) = grid(
  columns: (auto, 1fr, auto),
  align: (left, right, right),
  bbold(a),
  bbold(b),
  bbold(c),
)
#let item2(a, b) = grid(
  columns: (auto, 1fr),
  align: (left, right),
  bbold(a),
  text(b),
)

// -------------------------------------------------------------------
// [2] Resume Content
// -------------------------------------------------------------------

#grid(
  columns: (1fr, auto),
  align(center)[
    = Mingzhuo Yin

    #set text(rgb("#333333"))
    Xi'an Jiaotong University | B.Eng. in Computer Science | Class of 2026
    
    #fa-icon("envelope") yinmingzhuo\@gmail.com | #fa-icon("github") #link("https://github.com/silver-ymz")[github.com/silver-ymz] | #fa-icon("phone") +86 173-8208-4112 | #fa-icon("weixin") ymz31415926535
  ],
)

\

#set text(rgb("#444444"))

== Education
#item2[Xi'an Jiaotong University | B.Eng. in Computer Science & Technology (Honors Track)][2022.09 -- 2026.07]

- Admitted through the #bbold[Young Gifted Class], a national program for early university admission, bypassing middle and high school entrance exams.
- *Overall GPA*: 3.75/4.0 (86.27/100)
- *Core Coursework*: Intro to Computer Systems (97), Formal Languages & Compilation (93), Operating Systems (90), Computer Networks (89), Linear Algebra (95), Discrete Mathematics (94), Optimization Methods (91), Probability Theory (89).

== Work Experience
#item2[ByteDance | Database System R&D Intern (ByteHouse Storage Team)][2025.07 -- Present]
- Developing the cloud data warehouse, *#link("https://bytehouse.cloud")[ByteHouse]*, a #bbold[cloud-native] platform with decoupled storage and compute, multi-tenancy, and elastic scalability.
- *Leading the design and initial implementation of the Auto Partition feature*: Building an automatic partitioning and Min-Max index pruning scheme based on Snowflake's micro-partitioning concepts to enhance data management automation and query efficiency.
- Contributing to the development, testing, and maintenance of core modules including #bbold[Merge/Mutate] and #bbold[Transactions].

#item2[Tensorchord | Software R&D Intern][2023.10 -- 2025.06]
- As a core member during the company's #bbold[seed stage], played a key role in the 0-to-1 development of core products.
- Served as a core developer for *#link("https://github.com/tensorchord/pgvecto.rs")[pgvecto.rs]*, a PostgreSQL extension for vector similarity search, contributing ~30% of the core codebase.
  - Conducted in-depth research on cutting-edge vector indexing algorithms like HNSW and IVF, implementing findings from academic papers into the system.
  - Independently designed and implemented support for indexing and retrieving #bbold[sparse vectors] and #bbold[binary vectors], significantly broadening the plugin's applicability.
  - Developed a #bbold[SIMD-accelerated solution for sparse vectors], a novel approach among known open-source products, which greatly boosted retrieval performance.
- Led the development of *#link("https://github.com/tensorchord/VectorChord-bm25")[VectorChord-bm25]*, a BM25 ranking extension for PostgreSQL, from scratch, fully implementing the #bbold[Block-WAND] algorithm.
  - Benchmark tests show its geometric mean QPS is #bbold[2.26x] that of #bbold[Elasticsearch] in comparable scenarios.

#item2[Apache OpenDAL | PMC Member & Committer][2023.04 -- Present]
- As a core contributor to the Apache Top-Level Project #bbold[OpenDAL], committed to its vision of "*One Layer, All Storage*" by providing a unified, seamless data access layer.
- Deeply involved in implementing and optimizing the #bbold[SFTP] and #bbold[GCS] backends, and led the development of #bbold[C++] and #bbold[Haskell] bindings, significantly expanding the project's cross-language ecosystem.
- Nominated as a #bbold[Project Management Committee (PMC) Member] in recognition of sustained and outstanding contributions.

== Research Experience
#item2[Xi'an Jiaotong University, Institute of AI & Robotics | Research Assistant][2023.09 -- 2025.06]
- Advised by Prof. Pengju Ren and Prof. Tian Xia, focusing on #bbold[compiler prefetching optimization] and #bbold[side-channel attacks].
- *Publication*: Published as the second student author at #bbold[ISCA 2025 (CCF-A)], a top-tier conference in computer architecture.\
  Gelin Fu, Tian Xia, #underline[Mingzhuo Yin], Prashant J. Nair, Mieszko Lis, Pengju Ren\*, "Magellan: A High-Performance Loop-Guided Prefetcher for Indirect Memory Access", ISCA 2025.
- *Problem*: In applications like graph analytics and sparse linear algebra, irregular #bbold[Indirect Memory Accesses (IMAs)] cause traditional hardware prefetchers to fail, creating severe memory bottlenecks. Existing software prefetchers also struggle with complex IMA patterns in nested loops.
- *Contribution*: Proposed #bbold[Magellan], a high-performance software prefetcher. Its key innovations are:
  - Constructing a #bbold[Loop Dependence Graph (LDG)] to accurately identify both local and global IMA patterns across nested loops for the first time.
  - Capturing inner-outer loop semantics to issue prefetches for both current and future iterations, vastly expanding prefetching opportunities.
- *Implementation*: Independently developed an #bbold[LLVM Pass] to automate Magellan's analysis and prefetching strategies, enabling seamless integration into existing compiler toolchains.
- *Evaluation*: Across 14 memory-intensive benchmarks, Magellan reduced cache misses by 25% and dynamic instructions by 14% on average compared to the state-of-the-art software prefetcher, achieving a 1.14x average speedup (up to 1.41x).

== Projects & Coursework
- #bbold[Mini-LSM]: Implemented a persistent key-value store from scratch based on the #bbold[LSM-Tree] architecture.
  - Features include #bbold[Write-Ahead Logging (WAL)], Manifest file management, multi-level SSTable compaction, and #bbold[MVCC].
- #bbold[Bustub (CMU 15-445)]: Independently completed four core modules of a relational database kernel.
  - Implemented the Buffer Pool Manager, #bbold[B+Tree] Index, Query Executor, and 2PL-based Concurrency Control.
- #bbold[SysY Compiler (PKU Compiler Lab)]: Built a compiler for a C subset (SysY) targeting #bbold[RISC-V] assembly.
  - Implemented lexical analysis, parsing, semantic analysis, IR generation (LLVM IR), and linear scan register allocation.
- #bbold[xv6-labs (MIT 6.S081)]: Enhanced the core functionalities of the xv6 teaching OS.
  - Implemented Copy-on-Write, multithreading, a network driver, locks, mmap, and other key system features.
- #bbold[TCP/IP Stack (Stanford CS144)]: Built a complete TCP/IP stack from the ground up, passing all automated tests.
  - Implemented IP, ICMP, ARP, and TCP protocols, including reliable transport, flow control, and congestion control.

== Extracurricular Activities
#item2[0w1 Cybersecurity Club | President][2024.05 -- 2025.05]
- As President, I was responsible for the club's overall operations, including recruitment, and organizing tech talks and training sessions.
- Studied cryptography, gaining familiarity with modern techniques such as DES, AES, and RSA.

== Skills
- *Programming Languages*: #bbold[Rust], #bbold[C/C++], Python, Haskell, JavaScript, Java, C\#
- *Languages*: Chinese (Native), English (Proficient in reading technical documentation and academic papers, CET-4: 546, CET-6: 492)