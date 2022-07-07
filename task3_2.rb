# код може бути дещо незрозумілий тому додам коментарів 
def sort_func (data, a, b)
    a = 100-a
    split_data = data.split("\n")
    # сплітимо стрінгу щоб масив стрінги конвертувати в хеш 
    split_data = split_data.sort_by { |f| f.class == Array ? f.first : f }
    # сортуємо по алфавіту отриманий масив 
    hash= {}
    count = 0
    while count < split_data.length do
        symbol = split_data[count]=~ /,/
        _end= split_data[count].length
        # отримуємо значення індексу розділяючого знаку (,) і кінця строки
        str = split_data[count][0...symbol]
        num = split_data[count][symbol+2.._end]
        num = num.to_i
        # виділяємо значення ключа і відповідне value одразу конвертуючи його до int 
        bufer_hash ={str => num}
        # зберігаємо отримані данні для цієї ітерації
        hash = hash.merge(bufer_hash)
        # генеруємо необхідний нам хеш 
        count+=1
    end
    # конвертуємо масив стрінги в хеш
    top_hash = {}

    middle_hash = {}

    buttom_hash = {}
    # створюємо проміжні хеші
    count = a

    while count <= 100 do
        s = count - 90
        bufer_hash = hash.select { |key, value| value == 100-s}
        top_hash = top_hash.merge(bufer_hash)
        count +=1
    end
    # через метод select в циклі генеруємо значення хешу top
    count = b+1

    while count < a do
        s = count - b
        bufer_hash = hash.select { |key, value| value == a-s}
        middle_hash = middle_hash.merge(bufer_hash)
        count +=1
    end
    # через метод select в циклі генеруємо значення хешу middle
    count = 0

    while count <= b do
        s = count
        bufer_hash = hash.select { |key, value| value == b-s}
        buttom_hash = buttom_hash.merge(bufer_hash)
        count +=1
    end
    # через метод select в циклі генеруємо значення хешу buttom
    result = {:top => top_hash.keys, :middle => middle_hash.keys, :buttom => buttom_hash.keys}
end

data ="Student1, 80\nStudent2, 80\nAStudent3 p22p3, 80\ntudent4, 100\nStudent5, 90\nStudent6, 15\nStudent7, 16"

puts sort_func(data, 10, 15)