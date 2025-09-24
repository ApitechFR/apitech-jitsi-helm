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

{# Prosody #}

{{- define "jitsi-meet.prosody.fullname" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}
{{- end -}}