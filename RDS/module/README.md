### Instructions how to create RDS Instance and modulize it

## Copy paste below code 
```
module rds {
    source = "../"
    region = "us-east-1"
    allocated_storage    = 10
    db_name              = "mydb"
    engine               = "mysql"
    engine_version       = "8.0"
    instance_class       = "db.t3.micro"
    username             = "foo"
    publicly_accessible = true
}
```

## If you want the output 
```
output endpoint {
    value = module.rds.endpoint
}