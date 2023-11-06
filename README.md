### Initialize terraform
```
terraform init
```

### import the running server into the module
```
terraform import module.instance_module.google_compute_instance.<server-name> <Instance-id>
```

### applying the config file
```
terraform apply
```

### migrating statefile
```
terraform init -migrate-state
```
