from flask import Flask, request


app = Flask(__name__)

@app.route('/hello', methods = ['GET'])
def hello():
    return yhsj(9)

def yhsj(n):
    if n == 1:
        return [[1]]
    if n == 2:
        return [[1], [1,1]]
    data = [[1], [1,1]]
    for i in range(3, n+1):
        l = [1]
        lastline = data[-1]
        for j in range(0, len(lastline)-1):
            l.append(lastline[j] + lastline[j+1])
        l.append(1)
        data.append(l)
    # 生成字符串
    sep = '&nbsp;&nbsp;&nbsp;&nbsp;'
    width = len(sep.join(map(str, data[-1])))
    res_str = '<br/><br/>'
    for i in data:
        res_str += '<p style="text-align:center">' + sep.join(map(str, i)) + '</p>'
    return res_str + '<br/><h5 style="text-align:center">一个%s层的杨辉三角</h5>' % n
