help:
	@echo "--------------------------------"
	@echo "--------   AWS Global   --------"
	@echo "--------------------------------"
	@echo ""
	@echo "1- initiate terraform for installing dependencies:"
	@echo "    make init"
	@echo ""
	@echo "2- plan and see the changes that's will be addded:"
	@echo "    make plan"
	@echo ""
	@echo "Other targets:"
	@echo "    make apply"
	@echo "    make output"
	@echo "    make refresh"

init:
	@terraform init

plan:
	@terraform plan -var-file=terraform.tfvars

apply:
	@terraform apply -var-file=terraform.tfvars

output:
	@terraform output

refresh:
	@terraform refresh
