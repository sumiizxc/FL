id = c(3,2,1)
name = c("Erdene", "Khaliun", "Od")
sex = c("male", "female", "male")
age = c(21, 19, 20)
data = data.frame(id, name, sex, age);
print(data)
write.table(data, file = "Data.csv", sep = ",") # append = TRUE  гэдэг параметр нь байсан файл дээр нэмж утга нэмэх эсэхийг илэрхийлнэ.




X = read.table(file = "Data.csv", 
               header = TRUE, 
               sep = ",",
               stringsAsFactors = FALSE  #Skip параметр нь эхний хэдэн мөрийг алгасах гэдгийг тодорхойлдог
               # fill = !blank.lines.skip хоосон зайг ашиглахгүй орхих эсэхийг тодорхойлолох параметр
               #strip.while 
               )
X
class()




# install.packages("RMySQL") хавтасыг татах
# MYSQL installer community server-г татаж авах бөгөөд энэ нь өөрийн компьютер сервертэй холбогдон ажиллана.

