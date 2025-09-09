# DATA1002 Project – Cardiovascular Disease Risk Factors

This project investigates factors that compound cardiovascular disease (CVD) risk, using multiple public datasets.


## ⚙️ Setup (Everyone)

### 1. Install Python
- Use **Python 3.11 or 3.12**  
- Check your version:
  ```bash
  python --version
  ```
  It should say `Python 3.11.x` or `Python 3.12.x`.

If you don’t have it:

- **Windows:** [Download here](https://www.python.org/downloads/windows/) (tick *Add Python to PATH*).  
- **macOS:** `brew install python@3.11` (or download from python.org).  
- **Linux:** Install via package manager (e.g., `sudo apt install python3.11`).  

---

### 2. Create a Virtual Environment
Inside the project folder:
```bash
python -m venv .venv
```

---

### 3. Activate the Environment
- **macOS/Linux:**
  ```bash
  source .venv/bin/activate
  ```
- **Windows PowerShell:**
  ```bash
  .venv\Scripts\Activate.ps1
  ```
- **Windows CMD:**
  ```bash
  .venv\Scripts\activate.bat
  ```

---

### 4. Install Dependencies
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

---

### 5. Run Jupyter Notebook
```bash
jupyter notebook
```
Open the relevant notebook in the `notebooks/` folder.

Ensure your venv or virutal environment is selected as the kernel (Top right corner in vscode)

---

## Workflow for Each person
1. **Copy raw dataset** into `data/raw/`.  
2. Run your cleaning notebook (`datasetX_clean.ipynb`) → save cleaned file to `data/cleaned/`.  
3. Run your analysis notebook (`datasetX_analysis.ipynb`) → export plots to `report/figures/`.  


---

## 📑 Notes
- Everyone creates their **own .venv** on their computer (not shared).  
- Python 3.11–3.12 both work.  
- If something breaks, delete `.venv/` and recreate with the steps above.  
