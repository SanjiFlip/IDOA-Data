---

```markdown
# IDOA-Data: Benchmark Data for CEC2017 and CEC2022

This repository contains benchmark datasets used in the evaluation of the **Improved Dingo Optimization Algorithm (IDOA)**. The data are organized according to the **CEC2017** and **CEC2022** benchmark suites and cover multiple dimensions and visualizations.

## 📁 Directory Structure

```

📦 IDOA-Data
├── cec2017-dim10/           # CEC2017 benchmark results for 10 dimensions
├── cec2017-dim30/           # CEC2017 benchmark results for 30 dimensions
├── cec2017-dim50/           # CEC2017 benchmark results for 50 dimensions
├── cec2017-pic/             # Visualization (figures, charts) for CEC2017
├── CEC2022-dim=20/          # CEC2022 benchmark results for 20 dimensions
├── CEC2022-pic/             # Visualization (figures, charts) for CEC2022
└── README.md

```

## 📊 File Format

- All benchmark result files are provided in **Excel (`.xlsx`)** format.
- Each file typically contains:
  - Function-wise optimization results
  - Performance over multiple runs
  - Statistical analysis (e.g., mean, std, best, worst)
- Visualization folders (`*-pic`) contain **charts and plots** (e.g., `.png`, `.jpg`) to illustrate the algorithm's performance.

## ✅ What’s Included

- 📈 Complete test result data for:
  - **CEC2017**: Dimensions 10, 30, and 50
  - **CEC2022**: Dimension 20
- 📷 Corresponding visual figures (e.g., convergence curves, box plots)

## ❌ What’s Not Included

- The source code for the IDOA algorithm is **not included** in this repository.
- Please refer to the published manuscript for implementation details.

## 📬 Contact

For questions, or to request access to the algorithm code:

**[Yi Wang]**  
[Wuhan Polytechnic University]  
📧 [epochalboy@gmail.com]

## 📖 Citation

If you use this dataset in your research, please cite our paper:

```

@article{IDOA2025,
title={Improved Dingo Optimization Algorithm with Multi-Disturbance Mechanism for 3D Underwater Wireless Sensor Network Coverage Optimization},
author={Wang, Y. and others},
journal={Scientific Reports},
year={2025}
}

```
```

---
