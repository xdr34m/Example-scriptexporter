# Generate a random floating-point number
function Get-RandomFloat {
    param (
        [double]$min = 0.0,
        [double]$max = 1.0
    )

    # Create a random number generator
    $random = [System.Random]::new()
    
    # Generate a random float between $min and $max
    $randomFloat = $random.NextDouble() * ($max - $min) + $min
    
    # Output the random float
    return $randomFloat
    #return 2
}

# Call the function and output the result
$str_var=Get-RandomFloat
Write-Output ('script_output_XX{script="randfloat"} '+$str_var)