
{{- define "jitsi-meet.uvs.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-uvs
{{- end -}}

{{- define "jitsi-meet.uvs.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: uvs
{{- end -}}

{{- define "jitsi-meet.uvs.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: uvs
{{- end -}}