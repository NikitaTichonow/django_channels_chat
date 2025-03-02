import os
from channels.routing import ProtocolTypeRouter, URLRouter
from django.core.asgi import get_asgi_application
import chat.routing

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "django_channels_chat.settings")

asgi_application = get_asgi_application()

application = ProtocolTypeRouter(
    {"http": asgi_application, "websocket": URLRouter(chat.routing.websocket_urlpatterns)}
)
