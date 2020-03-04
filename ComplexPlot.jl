using DelimitedFiles, Plots

EVDdata = readdlm("wikipediaEVDdatesconverted.csv", ',') 
EVDdata[end-9:end, :]

a = rand()
println("a now has the value $a")
if a > 0.5
    println("this is quite a large value")
end

for k = 1:8
   a = rand()
   println("a now has the value $a")
   if a > 0.5
      println("this is quite a large value")
   end 
end

rows, cols = size(EVDdata) 
for j = 1:cols
    for i = 1:rows  # this order goes does one column at a time
       if !isa(EVDdata[i,j], Number)  
         EVDdata[i,j] = 0
        EVDdata[i,j] = Int64(EVDdata[i,j])
       end
   end
end

EVDdata[end-9:end, :]

epidays = EVDdata[:,1]
EVDcasesbycountry = EVDdata[:, [4, 6, 8]]

pyplot()
plot(epidays, EVDcasesbycountry)

plot(epidays, EVDcasesbycountry,
marker = ([:octagon :star7 :square], 9),
label     = ["Guinea" "Liberia" "Sierra Leone"],
title      = "EVD in West Africa, epidemic segregated by country",
xlabel   = "Days since 22 March 2014",
ylabel   = "Number of cases to date",
line = (:scatter)
)

plot(epidays, EVDcasesbycountry,
legend = :topleft,
marker = ([:octagon :star7 :square], 9),
label     = ["Guinea" "Liberia" "Sierra Leone"],
title      = "EVD in West Africa, epidemic segregated by country",
xlabel   = "Days since 22 March 2014",
ylabel   = "Number of cases to date",
line = (:scatter)
)

savefig("L5testfig.pdf")
