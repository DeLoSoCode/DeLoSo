def compare_files(file1_name, file2_name):
    with open(file1_name, 'r') as file1, open(file2_name, 'r') as file2:
        content1 = file1.read().strip()  
        content2 = file2.read().strip()  
        
        if len(content1) != len(content2):
            print("fail")
            return
        
        for i in range(len(content1)):
            if content1[i] != content2[i]:
                print("error")
                print(f" {i+1} number different：{content1[i]} vs {content2[i]}")
    
    print("sucess")

compare_files("file1.txt", "file2.txt")