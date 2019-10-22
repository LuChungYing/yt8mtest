model=$1
# inference-pre-ensemble

output_dir="/home/lulu/yt8m/models/model_predictions_test/${model}/"

python infer_pre_ensemble_test2.py \
        --output_dir=${output_dir} \
        --train_dir /home/lulu/yt8m/models/frame/${model} \
        --input_data_pattern="/home/lulu/yt8m/3/frame/test/*.tfrecord" \
        --frame_features=True \
        --feature_names="rgb,audio" \
        --feature_sizes="1024,128" \
        --model=${model} \
        --batch_size=32 \
        --segment_labels