## Topics tested
- Import existing infrastructure into Terraform configuration.
- Build and reference Terraform modules.
- Add a remote backend to the Terraform configuration.
- Use and implement a module from the Terraform Registry.
- Re-provision, destroy and update infrastructure.
- Test connectivity between the resources created.


### Initialize terraform
```
terraform init
```

### Import the running server into the module
```
terraform import module.instance_module.google_compute_instance.<server-name> <Instance-id>
```

### Applying the config file
```
terraform apply
```

### migrating statefile
```
terraform init -migrate-state
```
