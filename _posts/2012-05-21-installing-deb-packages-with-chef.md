---
layout : default
title : Installing Debian packages with Chef
---

[Chef](http://www.opscode.com/chef/) is a great tool to manage complex infrastructures. It does a lot of things, one of them is the ability
to deploy Debian packages with ease. But if you want to distribute a Debian package it becomes counterproductive.

{% highlight ruby %}
dpkg_package "Debian Package" do
  ignore_failure true
  case node[:platform]
    when "debian","ubuntu"
    package_name "foo"
    source "/var/cache/foo.deb"
  end
  action :install
  notifies :run, "execute[install-foo-deps]", :immediately
end

execute "install-foo-deps" do
  command <<-EOH
    apt-get update
    apt-get -yf install
  EOH
  action :nothing
end
{% endhighlight %}

This is the workaround I needed to do. Calling an extra block to install the package with the dependencies.
Still ignoring errors on dpkg_package is a pretty big deal, there are so many aspects that can go wrong. I opened an [improvement
request](http://tickets.opscode.com/browse/CHEF-3077), if you want this feature to implemented in chef please vote.
