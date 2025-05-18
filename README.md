## MATLAB Parallel Computing Workshop

This repository contains materials from the **MATLAB Parallel Computing Workshop**, structured in two parts. The workshop introduces key parallel processing techniques in MATLAB, including multicore, cluster, and GPU computation, along with performance scaling practices.

---

## Folder Structure

### `Part-I/` — Introductory Parallel Techniques
Includes MATLAB Live Scripts (`.mlx`), Simulink models, data files, and examples demonstrating basic parallel constructs:

- **parfor**, **parpool**, and distributed arrays
- **parfeval** workflows for asynchronous execution
- Simulink parallel simulations
- Data queueing and GPU array basics
- Key scripts:
  - `parfor_getting_started.mlx`
  - `parfeval_intro_exercise.mlx`
  - `parallel_Simulink.mlx`
  - `validateClassroom.m`
- Data file: `airlinesmall.xlsx`

### `Part-II/` — Advanced HPC & Slurm Integration
Covers high-performance computing methods using clusters and multi-node execution:

- Custom SLURM job scripts
- `parcluster` usage and job submission methods
- Multi-node and multi-core job examples
- GPU + CPU performance comparisons
- Key files:
  - `calc_pi_multi_node.m`
  - `parallel_example.m`
  - `matlab-single-node.slurm`
  - `process_files_v2.m`

---

## Topics Covered

- `parfor`, `spmd`, and `parfeval` patterns
- GPU vs CPU benchmarking with MATLAB
- Cluster profile setup and job submission
- Parallel Simulink simulation
- SLURM-based job scheduling
- Hybrid and multi-node execution

---

## Intended Audience

This workshop is designed for graduate students, researchers, and professionals looking to speed up computational tasks using MATLAB's Parallel Computing Toolbox, both locally and on HPC systems.

---

## Shared By:

**Darshitaben K. Patel**  
Graduate Student, Geodata Science for Professionals  


---

## Note

Some files in this repository may be designed for execution on HPC systems with SLURM schedulers. Be sure to configure your cluster profile before running advanced scripts.

