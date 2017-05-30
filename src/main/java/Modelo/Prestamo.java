package Modelo;

public class Prestamo {

    int etiquetaInv;/*Clave foranea*/
    String identificadorSol;/*Clave foranea*/
    String fechaDev;/*Fecha de devolución*/
    String fechaActual;/*Fecha en la que se pide el prestamo*/
    int cantidadPrestamo;/*Cantidad de elementos prestados*/
    String estado;/*Activo-Terminado*/


    public int getEtiquetaInv() {
        return etiquetaInv;
    }

    public void setEtiquetaInv(int etiquetaInv) {
        this.etiquetaInv = etiquetaInv;
    }

    public String getIdentificadorSol() {
        return identificadorSol;
    }

    public void setIdentificadorSol(String identificadorSol) {
        this.identificadorSol = identificadorSol;
    }

    public String getFechaDev() {
        return fechaDev;
    }

    public void setFechaDev(String fechaDev) {
        this.fechaDev = fechaDev;
    }

    public String getFechaActual() {
        return fechaActual;
    }

    public void setFechaActual(String fechaActual) {
        this.fechaActual = fechaActual;
    }

    public int getCantidadPrestamo() {
        return cantidadPrestamo;
    }

    public void setCantidadPrestamo(int cantidadPrestamo) {
        this.cantidadPrestamo = cantidadPrestamo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Prestamo{" + "etiquetaInv=" + etiquetaInv + ", identificadorSol=" + identificadorSol + ", fechaDev=" + fechaDev + ", fechaActual=" + fechaActual + ", cantidadPrestamo=" + cantidadPrestamo + ", estado=" + estado + '}';
    }

}
