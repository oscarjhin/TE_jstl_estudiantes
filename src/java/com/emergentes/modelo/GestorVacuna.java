
package com.emergentes.modelo;

import java.util.ArrayList;
import java.util.Iterator;

public class GestorVacuna 
{
    private ArrayList<Vacuna> lista;

    public GestorVacuna() 
    {
        lista = new ArrayList<Vacuna>();
    }

    public ArrayList<Vacuna> getLista() {
        return lista;
    }

    public void setLista(ArrayList<Vacuna> lista) {
        this.lista = lista;
    }
     
    public void insertarVacuna(Vacuna item)
    {
      lista.add(item);
    }
    public void modificarVacuna(int pos, Vacuna item)
    {
      lista.set(pos, item);
    }
    public void eliminarVacuna(int pos)
    {
      lista.remove(pos);
    }
   
    public int obtieneId()
    {
      int idaux=0;
      
      for (Vacuna item:lista)
      {
          idaux=item.getId();
      }
      return idaux + 1;
    }
    
    public int ubicarVacuna(int id)
    {
        int pos=-1;
        Iterator<Vacuna> it = lista.iterator();
        
        while ( it.hasNext())
        {
            ++pos;
            Vacuna aux = it.next();
            
            if(aux.getId()==id)
            {
                break;
            }
        }
        return pos;
    }
    
    
}
