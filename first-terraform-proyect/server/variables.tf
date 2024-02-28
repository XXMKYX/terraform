variable "PROYECT_NAME"{
    type = string
    default = "terraform-first-proyect-defaultName"
}

variable "EXAMPLE_VARIABLE"{
    type = string
    default = "variable_01"
    description = "A breef description"
}

variable "EXAMPLE_LIST"{
    type = list
    default = ["value_01","value_02","value_03"]
}

//Local variables 
/*locals {
    my_locals{
        EXAMPLE_VARIABLE_LOCAL = var.EXAMPLE_VARIABLE_LOCAL
        EXAMPLE_LIST_LOCAL = var.EXAMPLE_LIST_LOCAL
    }
    my_locals_list = var.EXAMPLE_LIST_LOCAL[0]
}*/
 