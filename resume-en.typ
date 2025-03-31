// Import Font Awesome icons
#import "@preview/fontawesome:0.5.0": *

// Define CV color
#let cv-color = rgb("#284967")
// Set page margins
#set page(margin: (x: 0.9cm, y: 1.0cm))
// Set default text font and size
#set text(font: "Noto Sans", size: 10pt) // Changed font to Noto Sans for broader English support
// Justify paragraphs
#set par(justify: true)
// Define a horizontal line style
#let chiline = {
  v(-8pt)
  line(stroke: cv-color, length: 100%)
  v(-2pt)
}
// Define "|" separator style
#show "|": text(gray, " | ")
// Define Level 1 heading style
#show heading.where(level: 1): it => text(fill: rgb("#222222"), size: 20pt, it) + v(5pt)
// Define Level 2 heading style
#show heading.where(level: 2): it => text(cv-color, it) + chiline
// Define bold text style
#let bbold(t) = text(fill: rgb("#222222"), weight: "bold", t)
// Define a 2-column grid item layout
#let item2(a, b) = grid(
  columns: (50%, 1fr),
  align: (left, right),
  text(fill: rgb("#222222"), weight: "bold", a),
  text(fill: rgb("#222222"), weight: "bold", b),
)
// Define a 3-column grid item layout (currently unused in the translated version, kept for structure)
#let item(a, b, c) = grid(
  columns: (20%, 1fr, 30%),
  align: (left, center, right),
  text(fill: rgb("#222222"), weight: "bold", a),
  text(rgb("#222222"), weight: "bold", b),
  text(rgb("#222222"), weight: "bold", c),
)

// -------------------------------------------------------------------
// CV Content Start
// -------------------------------------------------------------------


#grid(
  columns: (1fr, auto),
  align(center)[
    = Mingzhuo Yin // Translated Name

    #set text(rgb("#333333"))

    // Contact Information
    #fa-icon("envelope") ymzymz\@stu.xjtu.edu.cn | #fa-icon("github") #link("https://github.com/silver-ymz")[github.com/silver-ymz]
  ],
)


#set text(rgb("#444444"))

== Education

#item2[Xi'an Jiaotong University (XJTU) | Computer Science][Undergraduate Student]

*Major GPA:* 86.27/100 #h(1fr) Sep 2022 – July 2026 (Expected)

== Research Experience

#item2[Institute of Artificial Intelligence and Robotics, \ Xi'an Jiaotong University][Sep 2023 – Present]

Supervised by Prof. Pengju Ren and Prof. Tian Xia. Research focus: *Software Prefetching Optimization* and *Prefetcher Side-Channel Attacks*.

Many HPC workloads are severely limited by memory latency. Software prefetching techniques can reduce memory access latency by fetching data into the cache in advance. In this research, we identified a novel prefetching strategy and developed an LLVM pass to automatically insert prefetch instructions, improving cache locality.

Co-authored the following paper as the second student author:
Gelin Fu, Tian Xia, *Mingzhuo Yin*, Prashant Nair, Mieszko Lis, Pengju Ren\*, \"Magellan: A High-Performance Loop-Guided Prefetcher for
Indirect Memory Access\", International Symposium on Computer Architecture (ISCA), 2025.

== Internship Experience

#item2[#link("https://github.com/tensorchord")[Tensorchord] Intern][Oct 2023 – Present]
- Early development of *#link("https://github.com/tensorchord/pgvecto.rs")[pgvecto.rs]*, a PostgreSQL extension providing *vector similarity search*. Implemented indexing for sparse vectors and binary vectors, and researched state-of-the-art vector indexing algorithms.
- Development of *#link("https://github.com/tensorchord/VectorChord-bm25")[VectorChord-bm25]* and *#link("https://github.com/tensorchord/pg_tokenizer.rs")[pg_tokenizer.rs]*, PostgreSQL extensions for *BM25 ranking* and *tokenizer* functionalities. Developing most features from scratch, including implementation of the Block-WAND algorithm.
- Relevant Skills: Databases, Rust, Vector Indexing, BM25 Ranking, SIMD

#item2[#link("https://github.com/apache/opendal")[Apache OpenDAL] PMC Member][Apr 2023 – Present]
- Apache OpenDAL is an Open Data Access Layer that enables seamless interaction with diverse storage services.
- Contributed to the implementation of SFTP and GCS functionalities, as well as the development of C++ and Haskell bindings. Became a PMC (Project Management Committee) member upon community recommendation.
- Relevant Skills: Rust, Object Storage, C++, Haskell

== Projects & Coursework

*#link("https://github.com/NullRefMaster/Suicide")[The Second Persona]*: A platformer puzzle game developed using Unity2D.

*#link("https://github.com/silver-ymz/mini-lsm")[Mini-LSM]*: A simple key-value storage engine based on LSM-Tree. Built upon a provided framework, it supports operations like insert, query, delete, and features like Manifest, WAL, and MVCC Transactions.

*Bustub*: CMU 15-445 Database Systems Lab (Relational Database). Implemented Buffer Pool Manager, B+Tree Index, Query Execution, and Concurrency Control modules based on the provided framework.

*#link("https://github.com/silver-ymz/sysy")[SysY Compiler]*: PKU Compiler Lab. SysY is a simple subset of C. This project implements a compiler from SysY to RISC-V assembly, including basic syntax analysis, semantic analysis, intermediate code generation, and register allocation.

*#link("https://github.com/silver-ymz/xv6-labs-2023")[xv6-labs]*: MIT 6.S081 Operating System Engineering Lab. Implemented features including Utilities, System calls, Page tables, Traps, Copy-on-Write, Multithreading, Network driver, Locks, File system, and mmap.

*RCore OS*: Operating System Lab. Implemented modules for page tables, processes, file systems, IPC, concurrency, and IO.

*Minnow*: Stanford CS144 Computer Networking Lab. A simple TCP/IP protocol stack supporting basic IP, ICMP, ARP, UDP, TCP protocols, implementing basic routing, forwarding, and connection management.

== Skills

- *Language Proficiency*: Chinese (native), English (CET-4: 546, CET-6: 492)
- *Programming Languages* (in order of proficiency): Rust, C/C++, Python 3, Haskell, JavaScript, Java, C\#, Coq