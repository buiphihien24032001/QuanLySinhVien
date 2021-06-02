
package ASM;


public class DiemSV {

    String MASV="";
    String Hoten="";
    int Tienganh=0;
    int Tinhoc=0;
    int GDTC=0;
    double DiemTB=0;

    public DiemSV(String MASV,String Hoten,int Tienganh,int Tinhoc,int GDTC, double DiemTB) {

        this.MASV=MASV;
        this.Hoten=Hoten;
        this.Tienganh=Tienganh;
        this.Tinhoc=Tinhoc;
        this.GDTC=GDTC;
        this.DiemTB=DiemTB;
    }

 



    public String getMASV() {
        return MASV;
    }

    public void setMASV(String MASV) {
        this.MASV = MASV;
    }

    public String getHoten() {
        return Hoten;
    }

    public void setHoten(String Hoten) {
        this.Hoten = Hoten;
    }

    public int getTienganh() {
        return Tienganh;
    }

    public void setTienganh(int Tienganh) {
        this.Tienganh = Tienganh;
    }

    public int getTinhoc() {
        return Tinhoc;
    }

    public void setTinhoc(int Tinhoc) {
        this.Tinhoc = Tinhoc;
    }

    public int getGDTC() {
        return GDTC;
    }

    public void setGDTC(int GDTC) {
        this.GDTC = GDTC;
    }

    public double getDiemTB() {
        return DiemTB;
    }

    public void setDiemTB(double DiemTB) {
        this.DiemTB = DiemTB;
    }
    

    DiemSV() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
