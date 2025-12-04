{# Web #}

{{- define "jitsi-meet.web.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-web
{{- end -}}

{{- define "jitsi-meet.web.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web
{{- end -}}

{{- define "jitsi-meet.web.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web
{{- end -}}

{# Overlay v1 #}

{{- define "jitsi-meet.overlay.v1.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-v1
{{- end -}}

{{- define "jitsi-meet.overlay.v1.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-overlay-v1
{{- end -}}

{{- define "jitsi-meet.overlay.v1.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-overlay-v1
{{- end -}}

{# Overlay Proxy v1 #}

{{- define "jitsi-meet.overlay.v1.proxy.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-v1-proxy
{{- end -}}

{{- define "jitsi-meet.overlay.v1.proxy.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-proxy
{{- end -}}

{{- define "jitsi-meet.overlay.v1.proxy.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-proxy
{{- end -}}

{# Overlay v3 #}

{{- define "jitsi-meet.overlay.v3.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-v3
{{- end -}}

{{- define "jitsi-meet.overlay.v3.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-overlay-v3
{{- end -}}

{{- define "jitsi-meet.overlay.v3.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-overlay-v3
{{- end -}}

{# Overlay v3 Backend #}

{{- define "jitsi-meet.overlay.v3.backend.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-v3-backend
{{- end -}}

{{- define "jitsi-meet.overlay.v3.backend.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-overlay-v3-backend
{{- end -}}

{{- define "jitsi-meet.overlay.v3.backend.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-overlay-v3-backend
{{- end -}}

{# Overlay v3 Frontend #}

{{- define "jitsi-meet.overlay.v3.frontend.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-v3-frontend
{{- end -}}

{{- define "jitsi-meet.overlay.v3.frontend.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-overlay-v3-frontend
{{- end -}}

{{- define "jitsi-meet.overlay.v3.frontend.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-overlay-v3-frontend
{{- end -}}

{# Database #}
{{- define "jitsi-meet.overlay.database.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-overlay-db
{{- end -}}

{{- define "jitsi-meet.overlay.database.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: web-overlay-db
{{- end -}}

{{- define "jitsi-meet.overlay.database.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-overlay-db
{{- end -}}

{# Prosody #}

{{- define "jitsi-meet.prosody.fullname" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}
{{- end -}}

{{- define "jitsi-meet.prosody-visitor.fullname" -}}
{{ include "call-nested" (list . "prosody-visitor" "prosody-visitor.fullname") }}
{{- end -}}