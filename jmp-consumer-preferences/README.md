# Consumer Preferences Analysis (JMP)

**Objective**  
Understand consumer dental-hygiene behavior (brushing, flossing) and related demographics using JMP.  

**Dataset**  
- `Consumer-Preferences.jmp` (original JMP sample data)  
- `Consumer-Preferences.csv` (exported for easy viewing)  
Path in JMP: *Help → Sample Data Library → Consumer Preferences.jmp*. :contentReference[oaicite:0]{index=0}

**Methods**  
- Descriptive analytics: Histogram (Salary), Bar Charts (Gender, Marital Status):contentReference[oaicite:1]{index=1}  
- Relationships: Scatterplots (Floss Cost vs Age; Salary vs Age) with fit lines + 3D scatter:contentReference[oaicite:2]{index=2}  
- Bubble Plot: Salary vs Age sized by Years in Current Position; colored by Gender:contentReference[oaicite:3]{index=3}  
- Clustering: K-Means (k=3) on Age, Years at Current Employer, Years in Current Position + Biplot/3D:contentReference[oaicite:4]{index=4}  
- Decision Tree (Partition): Predict *Brush* using Gender & Age; validation 0.3; 3 splits:contentReference[oaicite:5]{index=5}  
- Regression: Salary ~ Age (linear fit; model fit commentary):contentReference[oaicite:6]{index=6}

**Key Findings (high level)**  
- Salary distribution shows a few high outliers; central tendency described in report.  
- Gender and marital-status composition summarized via bar charts.  
- Salary generally increases with age; floss cost is flat across ages (fixed price).  
- Three consumer segments emerge by age/tenure (younger/short-tenure vs. older/long-tenure).  
- Brushing frequency differs more by age group than gender.  
- Linear model explains a small portion of salary variance; age is a weak sole predictor.

**Why it matters**  
This project demonstrates end-to-end analytics in JMP—EDA, visualization, segmentation, prediction, and simple inference—mirroring workflows for entry-level analyst roles.

**Deliverables**  
- 📄 **Report (PDF):** `JMP-Consumer-Analysis.pdf` (case study format with charts)  
- 📂 **Data:** `Consumer-Preferences.jmp`, `Consumer-Preferences.csv`  
- 🖼️ **Figures:** `hist_salary.png`, `bars_gender_marital.png`, `scatter_salary_age.png`, `bubble_salary_age.png`, `cluster_biplot.png`, `dtree_brush.png`, `reg_salary_age.png`

**Skills Demonstrated**  
EDA • Data visualization • K-Means clustering • Decision trees (partition) • Linear regression • Insight communication in business context

