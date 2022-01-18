public class Area {
    
    public integer len;
    public integer wid;

    public void setDim(integer intLen, integer intWid){
        len = intLen;
        wid = intWid;
    }

    public Integer getArea(){
        integer area = len*wid;

        return area;
    }

}
