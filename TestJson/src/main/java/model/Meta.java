package model;

public class Meta{
    public String createdAt;
    public String updatedAt;
    public String barcode;
    public String qrCode;
	public Meta(String createdAt, String updatedAt, String barcode, String qrCode) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.barcode = barcode;
		this.qrCode = qrCode;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public String getQrCode() {
		return qrCode;
	}
	public void setQrCode(String qrCode) {
		this.qrCode = qrCode;
	}

    
}
