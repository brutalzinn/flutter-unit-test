int diferencaDateTime(List<DateTime> listaDateTime){
    
    int resultado = 0;
  
    for(int index = 0; index < listaDateTime.length; index++){
      if(index + 1 < listaDateTime.length){
          resultado += listaDateTime[index + 1].difference(listaDateTime[index]).inHours;
      }
    }
 
    return resultado;
} 