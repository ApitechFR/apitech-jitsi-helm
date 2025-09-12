
{{- define "jitsi-meet.turn.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-turn
{{- end -}}

{{- define "jitsi-meet.turn.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: turn
{{- end -}}

{{- define "jitsi-meet.turn.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: turn
{{- end -}}

{{- define "jitsi-meet.turn.secret" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}-turn
{{- end -}}
