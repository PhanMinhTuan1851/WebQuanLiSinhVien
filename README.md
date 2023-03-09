
<h1 align="center">
  <br>
  <a href="http://www.amitmerchant.com/electron-markdownify"><img src="/GitImages/HeaderWebsite.jpg" width="2000"></a>
  <br>
  Tổng quan và cách sử dụng
  <br>
</h1>

<p align="center">
  <a href="#Tổng-quan">Tổng quan về Website</a> •
  <a href="#Cách-sử-dụng">Cách sử dụng</a> •
  <a href="#Cách-tải-về-và-sử-dụng">Cách tải về và sử dụng</a> •
  <a href="#Người-thực-hiện">Người thực hiện</a> •
</p>

## Tổng quan

* 1 Website được xây dựng trên nền tảng Netbean, sử dụng ngôn ngữ lập trình Java để xây dựng.
* Kết nối Local Host nhờ plugin TomCat Server, 1 plugin thân thiện với Netbean.
* Tận dụng Bootstrap 5 để trang trí, không những đơn giản mà phải bắt mắt.
* Kết nối và tương tác với Database bằng MySQL WorkBench 8.0 CE.
* Ngoài ra, sử dụng JavaScript để kiểm soát lỗi nhập liệu của người dùng, đảm bảo hạn chế ít xảy ra xung đột nhất có thể.

## Cách sử dụng

Website bao gồm các chức năng như sau:



 <a href="http://www.amitmerchant.com/electron-markdownify"><img src="/GitImages/TrangQuanLi.png" width="2000"></a>
```bash


* Chức năng "Ghi Danh"
- Yêu cầu người dùng hoặc quản trị viên nhập vào thông tin sinh viên (Bao gồm: ID / Tên học sinh / Khóa học / Học phí )
- Chức năng yêu cầu người nhập phải điền đầy đủ thông tin.
- "ID" bao gồm 1 dãy 10 chữ số từ 0 đến 9. Không được thêm các kí tự chữ, kí tự đặc biệt và dấu cách.
- "ID" không được phép trùng nhau. 
- "Tên học sinh" bao gồm các kí tự chữ, bao gồm các chữ thường, hoa và dấu cách
- "Tên học sinh" không được phép dài quá hơn 255 kí tự. 
- "Tên học sinh" không được phép có chữ số.
- "Khóa học" yêu cầu thông tin dữ liệu bao gồm tất cả các kí tự và tên "Khóa học" không được phép quá 255 kí tự.
- "Học phí" yêu cầu chỉ được nhập số từ 0 đến 9 và không được phép nhập bất kì kí tự nào khác.

* Chức năng "Chỉnh sửa"
- Chức năng cho phép người dùng hoặc quản trị viên chỉnh sửa thông tin sinh viên (Bao gồm: Tên học sinh / Khóa học / Học phí )
- Chức năng yêu cầu người nhập phải điền đầy đủ thông tin, nếu không có gì thay đổi, dữ liệu sẽ không bị tác động.
- Có thể thay đổi từng ô thông tin ( Tên học sinh / Khóa học / Học phí ) hoặc thay đổi tất cả.

* Chức năng "Xóa"
- Chức năng cho phép người dùng hoặc quản trị viên xóa đi ô dữ liệu.

* Các chức năng khác 
- Chức năng "Xóa thông tin" sẽ xóa đi tất cả các thông tin đã nhập vào ( ID / Tên học sinh / Khóa học / Học phí )
- Chức năng "Quay lại trang chủ" sẽ đưa người sử dụng quay trở lại trang chủ.
```

> **Ghi chú**
- Xem các Comment trong code để biết thêm chi tiết từng đoạn code


## Cách tải về và sử dụng
* Cài đặt Netbean Apache bản 16/17
* Cài đặt TomCat Server 
* Cài đặt MySQL
* Tải từ nhánh Test / Main

1. Sau khi cài đặt xong Netbean và Tomcat, hãy vào Netbean.
2. Ở cửa sổ bên trái, chọn server.
3. Click chuột phải vào server, chọn "Add new server".
4. Cài đặt server, chọn Tomcat server.
5. Sau đó click ok.
7. Tải source code về.
8. Add folder "WebQuanLiSinhVien" vào trong "File" của Netbean.
9. Vào "Data", chọn "Add new Database".
10. Kết nối Netbean vào MySQL.
11. Hoàn tất cài đặt, chạy thử để kiểm tra.

## Người thực hiện

<a href="http://www.amitmerchant.com/electron-markdownify"><img src="/GitImages/twitter-banner.png" width="2000"></a>


<h3 align="right">
  <br>
  Cảm ơn thầy và các bạn đã xem xét, đánh giá và hướng dẫn ! 
  <br>
</h1>
