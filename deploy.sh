function usage()
{
  echo "Deploy script that calls jekyll, rsyncs to a staging location and deploys to the final link
Usage:
  deploy.sh staging|production
Respectivily for each deploy"
}

function staging()
{
  jekyll --no-server --no-auto
  rsync -av _site/*  boobierack:~/public_html/blog-staging/
}

function production()
{
  staging
  ssh boobierack "sudo rsync -av /home/masterkorp/public_html/blog-staging/* /var/www/"
}

case $1 in
  staging)
    staging
    printf "Staging deployed to:\n http://www.masterkorp.net/~masterkorp/blog-staging/\n"
  ;;
  production)
    production
    printf "Production deployed to:\n http://www.masterkorp.net/\n"
  ;;
  *)
    usage
  ;;
esac
