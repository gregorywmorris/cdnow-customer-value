import pandas as pd
import numpy as np
import joblib
import plydata.cat_tools as cat
import plotnine as pn
from xgboost import XGBClassifier, XGBRegressor
from sklearn.model_selection import GridSearchCV

pn.options.dpi = 300

# 1.0 DATA PREPARATION

cdnow_raw_df = pd.read_csv()