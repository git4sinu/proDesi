package com.desiEngg.backup;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/27/14
 * Time: 4:12 PM
 * To change this template use File | Settings | File Templates.
 */
public class Test {
    public static void main(String[] args)
    {
        System.out.println("MySQL Connect Example.");
        Connection conn = null;
        String url = "jdbc:mysql://118.67.244.39/";
        String dbName = "desiengg";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "desiengg";
        String password = "des1asdjFVa";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
            conn.close();
            System.out.println("Disconnected from database");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /*@RequestMapping(value = {"/user/pdf/{bId}","/desiengg/user/pdf/{bId}"})
    public String generatePDF(@PathVariable String bId ,@ModelAttribute("bucketForm") BucketForm bucketForm,
                              HttpServletResponse response) throws Exception {
        if (StringUtils.isNotEmpty(bId)) {
            Document document = new Document();
            bucketData = bucketManager.getBucketData(bId);
            if (bucketData != null) {
                try {
                    bucketModel.setBucketData(bucketData);
                    response.setContentType("application/pdf");
                    PdfWriter.getInstance(document, response.getOutputStream());
                    document.open();
                    Image image = Image.getInstance (System.getProperty("user.dir")+"/src/main/webapp/images/elev2.png");
                    image.scaleAbsolute(120f, 60f);//image width,height
                    String templateName = "bucketPDF.vm";
                     *//*  create a context and add data *//*
                    StringWriter writer = new StringWriter();
                    VelocityContext context = new VelocityContext();
                    context.put("model", bucketModel);
                    Template t = velocityEngine.getTemplate(templateName);
                    t.merge(context, writer);
                    //Create a table in PDF
                    PdfPTable pdfTable = new PdfPTable(3);
                    PdfPCell cell1 = new PdfPCell(new Phrase("Table Header 1"));
                    cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    pdfTable.addCell(cell1);

                    cell1 = new PdfPCell(new Phrase("Table Header 2"));
                    cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    pdfTable.addCell(cell1);

                    cell1 = new PdfPCell(new Phrase("Table Header 3"));
                    cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    pdfTable.addCell(cell1);
                    pdfTable.setHeaderRows(1);

                    pdfTable.addCell("Row 1 Col 1");
                    pdfTable.addCell("Row 1 Col 2");
                    pdfTable.addCell("Row 1 Col 3");

                    pdfTable.addCell("Row 2 Col 1");
                    pdfTable.addCell("Row 2 Col 2");
                    pdfTable.addCell("Row 2 Col 3");

                    document.add(pdfTable);
                    document.add(image);
                    document.add(new Paragraph(writer.toString()));
                } catch (Exception e) {
                    dlogger.error(e);
                } finally {
                    document.close();
                }
            }
        }
        return null;
    }*/
}
