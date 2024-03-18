$Body = @{
    id = "bobulova"
    name = "Dr.Bobulová"
    roomNumber = "123"
    predefinedConditions = @(
        @{ value = "Nádcha"; code = "rhinitis" },
        @{ value = "Kontrola"; code = "checkup" }
    )
}

 Invoke-RestMethod -Method Post -Uri http://localhost:8080/api/ambulance -Body ($Body | ConvertTo-Json) -ContentType "application/json"