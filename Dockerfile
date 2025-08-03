# 使用 alpine 作為基礎鏡像
FROM alpine:latest

# 安裝 nginx
RUN apk add --no-cache nginx

# 將本機的 index.html 檔案複製到 nginx 的 default website 目錄
COPY index.html /usr/share/nginx/html/index.html

# 暴露 8080 port 以方便cloud run    
EXPOSE 8080

# 啟動 nginx
CMD ["nginx", "-g", "daemon off;"]