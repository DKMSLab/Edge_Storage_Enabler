#	This file is part of ACCORDION Monitoring Aggregator.
#
#    ACCORDION Monitoring Aggregator is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    ACCORDION Monitoring Aggregator is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with ACCORDION Monitoring Aggregator.  If not, see https://www.gnu.org/licenses/.

docker buildx create --name mybuilder
docker buildx use mybuilder
docker run --privileged multiarch/qemu-user-static --reset -p yes
docker buildx inspect --bootstrap
docker buildx build --platform linux/arm/v7,linux/arm/v6,linux/amd64 -t registry.gitlab.com/accordion-project/wp3/aces-registry-sync-daemon --push .