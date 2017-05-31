//          
package Controlador;

import DAO.DaoPrestamo;
import Modelo.HistorialPrestamos;
import java.io.*;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

public class ExcelUsuariosNoPazSalvo extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

   
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException, URISyntaxException {

        response.setContentType("application/vnd.ms-excel");
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("Hoja 1");

        Map<String, Object[]> data = new HashMap<String, Object[]>();
        DaoPrestamo pr = new DaoPrestamo();
        ArrayList<HistorialPrestamos> modelo = pr.listarUsuariosNoPazSalvo();
        data.put("1", new Object[]{"Nombre elemento", "Cantidad", "Nombre Usuario", "Curso/Area", "Fecha Pedido", "Fecha de entrega", "Estado",});
        int index = 2;
        for (HistorialPrestamos paz : modelo) {
            data.put("" + (index++) + "", new Object[]{paz.getNombreElemento(), "" + paz.getCantidadPrestamo() + "", paz.getNombreUsuario() + "",
                paz.getCursoArea(), paz.getFechaInicio(), paz.getFechaDevolucion(), paz.getEstadoPrestamo()});

        }

        Set<String> keyset = data.keySet();
        int rownum = 0;
        for (String key : keyset) {
            Row row = sheet.createRow(rownum++);
            Object[] objArr = data.get(key);
            int cellnum = 0;
            for (Object obj : objArr) {
                Cell cell = row.createCell(cellnum++);
                if (obj instanceof Date) {
                    cell.setCellValue((Date) obj);
                } else if (obj instanceof Boolean) {
                    cell.setCellValue((Boolean) obj);
                } else if (obj instanceof String) {
                    cell.setCellValue((String) obj);
                } else if (obj instanceof Double) {
                    cell.setCellValue((Double) obj);
                }
            }
        }

        // Write the output 
        OutputStream out = response.getOutputStream();
        wb.write(out);
        out.close();
    }

    
}
