# Prediccion_futbol

The Ipynb file for this project is here [Peru in the WC 2022 MLP](https://github.com/Malvape/Prediccion_futbol/blob/main/Solucion.ipynb) , the datasets are from kaggle. and the following graphics show what the model expects the group stage game would have been like for Peru.

The data for this project is here:
* [fifa-23-complete-player-dataset](https://www.kaggle.com/datasets/cashncarry/fifa-23-complete-player-dataset)
* [international-football-results-from-1872-to-2017](https://www.kaggle.com/datasets/martj42/international-football-results-from-1872-to-2017)

Basically the project is taking the data about the players of each team that played the world cup, and the result of the previous games of that year (2022) that were played by at least one of the qualifiying teams.
Then i replaced Australia for peru in the games that they played on the group stage of the World Cup, to visualize what would have been the most likely scenario.



```python
# Your code that generates warnings

parameters = {'hidden_layer_sizes':[10, 25, 50, 75, 100, 150],
              'alpha': [0.0001, 0.001, 0.01, 0.1, 0.005], 
              'max_iter': [200, 500, 800], 
              'learning_rate_init':[0.0001, 0.001, 0.01, 0.1]}

model = MLPClassifier()
clf = GridSearchCV(estimator=model, param_grid=parameters, cv=5, n_jobs=-1)

clf.fit(X_train, y_train) # may need to reduce the train set size to shorten the training time
# To ignore all warnings

print("The best parameter values found are:\n")
print(clf.best_params_)

# store the best model found in "bestmodel"
bestmodel = clf.best_estimator_
```
The best parameters found were {'alpha': 0.1, 'hidden_layer_sizes': 75, 'learning_rate_init': 0.0001, 'max_iter': 200}

![image](https://github.com/Malvape/Prediccion_futbol/assets/41355722/709c3b15-f078-4eb8-8c13-ca8b0af798d4)

![image](https://github.com/Malvape/Prediccion_futbol/assets/41355722/30b8668a-d932-4011-af03-d6a1a1e4476b)

![image](https://github.com/Malvape/Prediccion_futbol/assets/41355722/302d5a2a-9fe1-4df7-b93c-ceadf28f8cca)


