# Copyright (C) (2022) (Mathieu Bergeron) (mathieu.bergeron@cmontmorency.qc.ca)
#
# This file is part of Ntro
#
# Ntro is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ntro is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with aquiletour.  If not, see <https://www.gnu.org/licenses/>

##### INCLUDE #####
this_dir=$(readlink -f $0)
scripts_dir=$(dirname "$this_dir")
. "$scripts_dir/include.sh"
###################

save_dir

cd "$root_dir"

mkdir themes
git clone git@github.com:mathieu-bergeron/hugo-book              themes/hugo-book

mkdir data

# public data
git clone git@github.com:mathieu-bergeron/theorie.ntro.ca     data/theorie
git clone git@github.com:mathieu-bergeron/tutoriels.ntro.ca   data/tutoriels
git clone git@github.com:mathieu-bergeron/ateliers.ntro.ca    data/ateliers
git clone git@github.com:mathieu-bergeron/misc.ntro.ca        data/misc
git clone git@github.com:mathieu-bergeron/code.ntro.ca        data/code

# private data
git clone git@github.com:mathieu-bergeron/examens.ntro.ca     data/examens

# private documents and notes
git clone git@github.com:mathieu-bergeron/private.codelescartes.ca private

restore_dir
