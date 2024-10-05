def compare_files(file1_name, file2_name):
    with open(file1_name, 'r') as file1, open(file2_name, 'r') as file2:
        content1 = file1.read().strip()  # 读取文件1的内容并去除首尾空格
        content2 = file2.read().strip()  # 读取文件2的内容并去除首尾空格
        
        if len(content1) != len(content2):
            print("wrong")
            print("文件长度不一致")
            return
        
        for i in range(len(content1)):
            if content1[i] != content2[i]:
                print("error")
                print(f"文件在位置 {i+1} 处的数字不同：{content1[i]} vs {content2[i]}")
                # 如果你想记录所有不同位置的数字，可以将其添加到一个列表中或进行其他处理操作
    
    print("比较完成，没有发现不同位置的数字")

# 调用函数进行比较，传入文件名
compare_files("file1.txt", "file2.txt")
