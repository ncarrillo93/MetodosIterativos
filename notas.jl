using Plots

metodos=[HCG,HBICGSTAB,HGMRES,HMINRES,HQMR];
layout= @layout [a ; b ; c ; d ; e];
p=plot(
    layout=layout,
    size=(1200,2500)
)

for (i,metodo) in enumerate(metodos)
    for (j,valor) in enumerate(n)

        aux=n[j]
        label= "N= $aux"
        x=[x for x in 1:length( metodo[i][j][:resnorm] )];
        y=metodo[i][j][:resnorm];
        plot!(p[i],x,y,label=label)        
    end
end