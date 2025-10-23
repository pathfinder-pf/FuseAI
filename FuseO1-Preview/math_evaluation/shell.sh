model_path="deepseek-ai"
result_dir="/tmp/deepseek-ai/qwen1.5b"

# deepseek-ai/DeepSeek-R1-Distill-Qwen-32B

for model_name in "DeepSeek-R1-Distill-Qwen-1.5B"
do
for ((seed=0; seed<=31; seed++)); do
  mkdir -p "${result_dir}/${model_name}-seed${seed}"
  prompt_type="deepseek-math-cot"
  bash ./sh/eval_aime.sh $prompt_type ${model_path}/${model_name} "${result_dir}/${model_name}-seed${seed}" $seed
done
done