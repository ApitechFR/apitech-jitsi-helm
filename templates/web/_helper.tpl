
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

{{- define "jitsi-meet.web.proxy.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: web-proxy
{{- end -}}

{{- define "jitsi-meet.prosody.fullname" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}
{{- end -}}