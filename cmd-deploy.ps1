
$app_namespace = "example"

Write-Host -ForegroundColor Green "Create namespace for example-app"
kubectl create ns $app_namespace

Write-Host -ForegroundColor Green "Add TLS secret - into namespace of app that will use it"
#kubectl apply -f ./tls-secret.yaml 

Write-Host -ForegroundColor Green "Create example app pod"
kubectl apply -f .\kubernetes\deployment.yaml

Write-Host -ForegroundColor Green "Create example app service"
kubectl apply -f .\kubernetes\service.yaml

Write-Host -ForegroundColor Green "Create ingress"
kubectl apply -f .\kubernetes\ingress.yaml