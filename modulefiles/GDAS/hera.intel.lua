help([[
Load environment for running the GDAS application with Intel compilers and MPI.
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

prepend_path("MODULEPATH", '/scratch1/NCEPDEV/nems/role.epic/spack-stack/spack-stack-1.6.0/envs/unified-env-rocky8/install/modulefiles/Core')
prepend_path("MODULEPATH", '/scratch1/NCEPDEV/da/python/opt/modulefiles/stack')

stack_intel_ver=os.getenv("stack_intel_ver") or "2021.5.0"
load(pathJoin("stack-intel", stack_intel_ver))

stack_impi_ver=os.getenv("stack_impi_ver") or "2021.5.1"
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

cmake_ver=os.getenv("cmake_ver") or "3.23.1"
load(pathJoin("cmake", cmake_ver))

gettext_ver=os.getenv("gettext_ver") or "0.19.8.1"
load(pathJoin("gettext", gettext_ver))

pcre2_ver=os.getenv("pcre2_ver") or "10.42"
load(pathJoin("pcre2", pcre2_ver))

curl_ver=os.getenv("curl_ver") or "8.4.0"
load(pathJoin("curl", curl_ver))

zlib_ver=os.getenv("zlib_ver") or "1.2.13"
load(pathJoin("zlib", zlib_ver))

git_ver=os.getenv("git_ver") or "2.18.0"
load(pathJoin("git", git_ver))

pkg_config_ver=os.getenv("pkg_config_ver") or "0.27.1"
load(pathJoin("pkg-config", pkg_config_ver))

hdf5_ver=os.getenv("hdf5_ver") or "1.14.0"
load(pathJoin("hdf5", hdf5_ver))

pnetcdf_ver=os.getenv("pnetcdf_ver") or "1.12.2"                                                    
load(pathJoin("parallel-netcdf", pnetcdf_ver))

netcdf_c_ver=os.getenv("netcdf_c_ver") or "4.9.2"                                                    
load(pathJoin("netcdf-c", netcdf_c_ver))

nccmp_ver=os.getenv("nccmp_ver") or "1.9.0.1"
load(pathJoin("nccmp", nccmp_ver))

netcdf_fortran_ver=os.getenv("netcdf_fortran_ver") or "4.6.1"
load(pathJoin("netcdf-fortran", netcdf_fortran_ver))

nco_ver=os.getenv("nco_ver") or "5.0.6"
load(pathJoin("nco", nco_ver))

parallelio_ver=os.getenv("parallelio_ver") or "2.5.10"
load(pathJoin("parallelio", parallelio_ver))

wget_ver=os.getenv("wget_ver") or "1.14"
load(pathJoin("wget", wget_ver))

boost_ver=os.getenv("boost_ver") or "1.83.0"
load(pathJoin("boost", boost_ver))

bufr_ver=os.getenv("bufr_ver") or "12.0.1"
load(pathJoin("bufr", bufr_ver))

git_lfs_ver=os.getenv("git_lfs_ver") or "2.10.0"
load(pathJoin("git-lfs", git_lfs_ver))

ecbuild_ver=os.getenv("ecbuild_ver") or "3.7.2"
load(pathJoin("ecbuild", ecbuild_ver))

openjpeg_ver=os.getenv("openjpeg_ver") or "2.3.1"
load(pathJoin("openjpeg", openjpeg_ver))

eccodes_ver=os.getenv("eccodes_ver") or "2.32.0"
load(pathJoin("eccodes", eccodes_ver))

eigen_ver=os.getenv("eigen_ver") or "3.4.0"
load(pathJoin("eigen", eigen_ver))

openblas_ver=os.getenv("openblas_ver") or "0.3.24"
load(pathJoin("openblas", openblas_ver))

eckit_ver=os.getenv("eckit_ver") or "1.24.5"
load(pathJoin("eckit", eckit_ver))

fftw_ver=os.getenv("fftw_ver") or "3.3.10"
load(pathJoin("fftw", fftw_ver))

fckit_ver=os.getenv("fckit_ver") or "0.11.0" 
load(pathJoin("fckit", fckit_ver))

fiat_ver=os.getenv("fiat_ver") or "1.2.0" 
load(pathJoin("fiat", fiat_ver))

ectrans_ver=os.getenv("ectrans_ver") or "1.2.0" 
--load(pathJoin("ectrans", ectrans_ver))

fms_ver=os.getenv("fms_ver") or "2023.04"
load(pathJoin("fms",fms_ver))

atlas_ver=os.getenv("atlas_ver") or "0.35.1"
load(pathJoin("atlas", atlas_ver))

sp_ver=os.getenv("sp_ver") or "2.5.0"
load(pathJoin("sp", sp_ver))

gsl_lite_ver=os.getenv("gsl_lite_ver") or "0.37.0"
load(pathJoin("gsl-lite", gsl_lite_ver))

libjpeg_ver=os.getenv("libjpeg_ver") or "2.1.0"
load(pathJoin("libjpeg", libjpeg_ver))

krb5_ver=os.getenv("krb5_ver") or "1.20.1"
load(pathJoin("krb5", krb5_ver))

libtirpc_ver=os.getenv("libtirpc_ver") or "1.3.3"
load(pathJoin("libtirpc", libtirpc_ver))

hdf_ver=os.getenv("hdf_ver") or "4.2.15"
load(pathJoin("hdf", hdf_ver))

jedi_cmake_ver=os.getenv("jedi_cmake_ver") or "1.4.0"
load(pathJoin("jedi-cmake", jedi_cmake_ver))

libpng_ver=os.getenv("libpng_ver") or "1.6.37"
load(pathJoin("libpng", libpng_ver))

libxt_ver=os.getenv("libxt_ver") or "1.1.5"
load(pathJoin("libxt", libxt_ver))

libxmu_ver=os.getenv("libxmu_ver") or "1.1.4"
load(pathJoin("libxmu", libxmu_ver))

libxpm_ver=os.getenv("libxpm_ver") or "4.11.0"
load(pathJoin("libxpm", libxpm_ver))

libxaw_ver=os.getenv("libxaw_ver") or "1.0.13"
load(pathJoin("libxaw", libxaw_ver))

udunits_ver=os.getenv("udunits_ver") or "2.2.28"
load(pathJoin("udunits", udunits_ver))

ncview_ver=os.getenv("ncview_ver") or "2.1.9"
load(pathJoin("ncview", ncview_ver))

netcdf_cxx_ver=os.getenv("netcdf_cxx_ver") or "4.3.1"
load(pathJoin("netcdf-cxx4", netcdf_cxx_ver))

json_ver=os.getenv("json_ver") or "3.10.5"
load(pathJoin("json", json_ver))

rocoto_ver=os.getenv("rocoto_ver") or "1.3.6"
load(pathJoin("rocoto", rocoto_ver))

prod_util_ver=os.getenv("prod_util_ver") or "2.1.1"
load(pathJoin("prod_util", prod_util_ver))

pyjinja2_ver=os.getenv("pyjinja2_ver") or "3.0.3"
load(pathJoin("py-jinja2", pyjinja2_ver))

pynetcdf4_ver=os.getenv("pynetcdf4_ver") or "1.5.8"
load(pathJoin("py-netcdf4", pynetcdf4_ver))

pybind11_ver=os.getenv("pybind11_ver") or "2.11.0"
load(pathJoin("py-pybind11", pybind11_ver))

pycodestyle_ver=os.getenv("pycodestyle_ver") or "2.11.0"
load(pathJoin("py-pycodestyle", pycodestyle_ver))

pyyaml_ver=os.getenv("pyyaml_ver") or "6.0"
load(pathJoin("py-pyyaml", pyyaml_ver))

pyscipy_ver=os.getenv("pyscipy_ver") or "1.11.3"
load(pathJoin("py-scipy", pyscipy_ver))

pyxarray_ver=os.getenv("pyxarray_ver") or "2023.7.0"
load(pathJoin("py-xarray", pyxarray_ver))

pyf90nml_ver=os.getenv("pyf90nml_ver") or "1.4.3"
load(pathJoin("py-f90nml", pyf90nml_ver))

pypip_ver=os.getenv("pypip_ver") or "23.1.2"
load(pathJoin("py-pip", pypip_ver))

setenv("CC","mpiicc")
setenv("FC","mpiifort")
setenv("CXX","mpiicpc")
local mpiexec = '/apps/slurm/default/bin/srun'
local mpinproc = '-n'
setenv('MPIEXEC_EXEC', mpiexec)
setenv('MPIEXEC_NPROC', mpinproc)

setenv("CRTM_FIX","/scratch1/NCEPDEV/da/role.jedipara/GDASApp/fix/crtm/2.4.0")
setenv("GDASAPP_TESTDATA","/scratch1/NCEPDEV/da/role.jedipara/GDASApp/testdata")
setenv("GDASAPP_UNIT_TEST_DATA_PATH", "/scratch1/NCEPDEV/da/role.jedipara/GDASApp/unittestdata")

whatis("Name: ".. pkgName)
--whatis("Version: ".. pkgVersion)
whatis("Category: GDASApp")
whatis("Description: Load all libraries needed for GDASApp")
