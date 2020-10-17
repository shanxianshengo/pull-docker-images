base_repo=registry.cn-shenzhen.aliyuncs.com/images_mirror

docker pull gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard@sha256:e72593477e8cb09b718b9b0b38731de5b4cb7ef0c04712f7b97f51be5c5e06c7

docker tag gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.17.1@sha256:e35782523472e105fe68a91c346df73733f70255ac84fe8cfcbf299c2cbf82c0 $base_repo/tektoncd-dashboard

docker push $base_repo/tektoncd-dashboard
