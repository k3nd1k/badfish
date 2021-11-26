%global sum Badfish is a Redfish-based API tool for managing bare-metal systems via the Redfish API
%global desc \
Badfish is a vendor-agnostic, redfish-based API tool used to consolidate \
management of IPMI and out-of-band interfaces for common server hardware \
vendors.  Badfish is also a popular song from Sublime, this may be a \
coincidence – are you a badfish too?


Name:           python3-badfish
Version:        @VERSION@
Release:        @RELEASE@%{?dist}
Summary:        %{sum}

License:        GPLv3
URL:            https://github.com/redhat-performance/badfish
Source0:        %{url}/archive/v%{version}/python3-badfish-%{version}.tar.gz

BuildArch:      noarch
BuildRequires:  python3-setuptools
BuildRequires:  python3-devel

%description
%{desc}

%prep
%autosetup -n %{name}-%{version}

%build
%py3_build

%install
%py3_install

%files -n %{name}
%doc README.md
%license LICENSE
%{python3_sitelib}/*
%{_bindir}/badfish

%changelog
* @DATE@ Gonzalo Rafuls <gonza@redhat.com> - @VERSION@-@RELEASE@
- built from upstream, changelog ignored
