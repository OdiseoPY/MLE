# === Rename top-level folders ===
git mv Foundation foundations
git mv from_scratch implementations
git mv ML-Notes docs

# === Move foundation files stay inside their subfolders ===
# (No changes, they are already structured properly)

# === Implementations cleanup ===
git mv implementations/principal_component_analysis_from_scratch.ipynb implementations/dimensionality_reduction/pca_from_scratch.ipynb
git mv implementations/sklearn_ensemble_RandomForest.ipynb implementations/ensembles/random_forest.ipynb

# Create model family dirs
mkdir -p implementations/regression implementations/trees implementations/dimensionality_reduction implementations/ensembles implementations/evaluation

# Move regression notebooks
git mv implementations/linear_regression.ipynb implementations/regression/linear_regression.ipynb
git mv implementations/logistic_regression.ipynb implementations/regression/logistic_regression.ipynb

# Move trees
git mv implementations/decision_trees_hands_on.ipynb implementations/trees/decision_trees_hands_on.ipynb

# Move evaluation
git mv implementations/evaluation_ml.ipynb implementations/evaluation/evaluation_ml.ipynb

# === Projects cleanup ===
mkdir -p projects/phishing_detection projects/time_series

git mv implementations/phishing-detection-ml.ipynb projects/phishing_detection/phishing_ml.ipynb
git mv projects/phishing_ml.ipynb projects/phishing_detection/phishing_ml.ipynb  # (deduplicate to one location if both exist)

git mv "projects/Time-Series Data Engineering/hf_data_handling.ipynb" projects/time_series/hf_data_handling.ipynb
git mv "projects/Time-Series Data Engineering/hf_data_pipeline.ipynb" projects/time_series/hf_data_pipeline.ipynb
git mv "projects/Time-Series Data Engineering/Sample Input - Sample.csv.csv" projects/time_series/sample_input.csv
rm -rf "projects/Time-Series Data Engineering"

# === Docs cleanup ===
# Everything inside docs/ now holds your notes
git mv docs/gradients.md docs/gradients.md
git mv docs/linear-nonlinear.md docs/linear-nonlinear.md
git mv docs/MachineLearningNotes.pdf docs/MachineLearningNotes.pdf

# === Add tests folder placeholder ===
mkdir -p tests
touch tests/.gitkeep
git add tests/.gitkeep
