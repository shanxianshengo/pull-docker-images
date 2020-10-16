base_repo=registry.cn-shenzhen.aliyuncs.com/images_mirror

docker pull k8s.gcr.io/ingress-nginx/controller:v0.40.2@sha256:46ba23c3fbaafd9e5bd01ea85b2f921d9f2217be082580edc22e6c704a83f02f
docker pull gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.17.1@sha256:e35782523472e105fe68a91c346df73733f70255ac84fe8cfcbf299c2cbf82c0
docker pull gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:v0.17.1@sha256:0ebac19d31ae7e76b2a6df13afe4d49b8381c524f21829cbb3b86733de105f67

docker tag k8s.gcr.io/ingress-nginx/controller:v0.40.2@sha256:46ba23c3fbaafd9e5bd01ea85b2f921d9f2217be082580edc22e6c704a83f02f  $base_repo/ngress-nginx-controller:v0.40.2
docker tag gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.17.1@sha256:e35782523472e105fe68a91c346df73733f70255ac84fe8cfcbf299c2cbf82c0 $base_repo/tektoncd-pipeline-controller:v0.17.1
docker tag gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:v0.17.1@sha256:0ebac19d31ae7e76b2a6df13afe4d49b8381c524f21829cbb3b86733de105f67 $base_repo/tektoncd-pipeline-webhook:v0.17.1

docker push $base_repo/ngress-nginx-controller:v0.40.2
docker push $base_repo/tektoncd-pipeline-controller:v0.17.1
docker push $base_repo/tektoncd-pipeline-webhook:v0.17.1
