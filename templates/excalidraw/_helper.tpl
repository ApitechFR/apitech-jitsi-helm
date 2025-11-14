{# Backend #}
{{- define "jitsi-meet.excalidraw.frontend.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-excalidraw-frontend
{{- end -}}

{{- define "jitsi-meet.excalidraw.frontend.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: excalidraw-frontend
{{- end -}}

{{- define "jitsi-meet.excalidraw.frontend.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: excalidraw-frontend
{{- end -}}

{# Backend #}
{{- define "jitsi-meet.excalidraw.backend.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-excalidraw-backend
{{- end -}}

{{- define "jitsi-meet.excalidraw.backend.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: excalidraw-backend
{{- end -}}

{{- define "jitsi-meet.excalidraw.backend.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: excalidraw-backend
{{- end -}}