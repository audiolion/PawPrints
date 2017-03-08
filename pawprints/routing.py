"""
Author: Peter Zujko (@zujko)
        Lukas Yelle (@lxy5611)
Desc: Implements channels routing for the whole pawprints app.
"""
from channels.routing import route
from channels import include

channel_routing = [
    include("petitions.routing.channel_routing"),
]
