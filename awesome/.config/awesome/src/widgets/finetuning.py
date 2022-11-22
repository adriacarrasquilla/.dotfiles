from __future__ import division

import keras
from keras.applications import VGG16 # EfficientNetB0, EfficientNetB4, VGG16, EfficientNetB2
from keras.optimizers import Adam
from keras.models import Sequential
from keras.layers import Dense, Activation, Conv2D, MaxPooling2D, Flatten, Dropout, BatchNormalization
from keras.callbacks import ModelCheckpoint, LearningRateScheduler, TensorBoard, EarlyStopping

import tensorflow as tf

import os
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

import read_data

print("loading data")
train, val, test = read_data.load_datagenerators()

img_rows, img_cols, channels = 256, 256, 3
n_classes = 29

input_shape = (img_rows, img_cols, channels)

model = VGG16(weights="imagenet", include_top=False, input_shape=input_shape)

# for l in model.layers[:6]:     # 465 for B4, 330 for B2
#     l.trainable = False

x = model.output
x = Flatten()(x)
x = Dense(512, activation="relu")(x)
x = Dropout(0.2)(x)
x = Dense(512, activation="relu")(x)
predictions = Dense(n_classes, activation="softmax")(x)

final_model = keras.Model(model.input, predictions)

#Compile the NN
final_model.compile(optimizer=Adam(learning_rate=0.00005), loss='categorical_crossentropy', metrics=['accuracy'])

# final_model.summary()
# model.summary()

early = EarlyStopping(monitor='val_accuracy', min_delta=0, patience=10, verbose=1, mode='auto')
callbacks = [
    # keras.callbacks.ModelCheckpoint("mame.h5", save_best_only=True)
    early
]

#Start training
history = final_model.fit(train, epochs=30, validation_data=(val), callbacks=callbacks)

#Evaluate the model with test set
score = final_model.evaluate(test, verbose=0)
print('test loss:', score[0])
print('test accuracy:', score[1])

##Store Plots
#Accuracy plot
plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epoch')
plt.legend(['train','val'], loc='upper left')
plt.savefig('accuracy.png')
plt.close()
#Loss plot
plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend(['train','val'], loc='upper left')
plt.savefig('loss.png')
