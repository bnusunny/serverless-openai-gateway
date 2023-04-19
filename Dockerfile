FROM public.ecr.aws/nginx/nginx:1.24-alpine
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.7.0 /lambda-adapter /opt/extensions/lambda-adapter

ADD nginx /app/nginx
ADD bootstrap /app
CMD ["/app/bootstrap"]