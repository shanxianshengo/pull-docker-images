base_repo=registry.cn-shenzhen.aliyuncs.com/images_mirror

pipeline_version=v0.18.1
trigger_version=v0.10.0
dashboard_version=v0.11.1

#pipeline
docker pull gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:$pipeline_version
docker pull gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:$pipeline_version

docker tag gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:$pipeline_version willdockerhub/tektoncd-pipeline-controller:$pipeline_version
docker tag gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:$pipeline_version willdockerhub/tektoncd-pipeline-webhook:$pipeline_version

docker push willdockerhub/tektoncd-pipeline-controller:$pipeline_version
docker push willdockerhub/tektoncd-pipeline-webhook:$pipeline_version

#triggers
docker pull gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/controller:$trigger_version
docker pull gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/webhook:$trigger_version

docker tag gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/controller:$trigger_version willdockerhub/tektoncd-triggers-controller:$trigger_version
docker tag gcr.io/tekton-releases/github.com/tektoncd/triggers/cmd/webhook:$trigger_version  willdockerhub/tektoncd-triggers-webhook:$trigger_version

docker push willdockerhub/tektoncd-triggers-controller:$trigger_version
docker push willdockerhub/tektoncd-triggers-webhook:$trigger_version

#dashboard
docker pull gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard:$dashboard_version
docker tag gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard:$dashboard_version willdockerhub/tektoncd-dashboard:$dashboard_version
docker push willdockerhub/tektoncd-dashboard:$dashboard_version

