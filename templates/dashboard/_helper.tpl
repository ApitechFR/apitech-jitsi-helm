{# General #}

{{- define "jitsi-meet.dashboard.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-dashboard
{{- end -}}

{{- define "jitsi-meet.dashboard.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{{- define "jitsi-meet.dashboard.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{# Prometheus #}

{{- define "jitsi-meet.dashboard.prometheus.fullname" -}}
{{ include "jitsi-meet.dashboard.fullname" . }}-prometheus
{{- end -}}

{{- define "jitsi-meet.dashboard.prometheus.labels" -}}
{{ include "jitsi-meet.dashboard.labels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{{- define "jitsi-meet.dashboard.prometheus.selectorLabels" -}}
{{ include "jitsi-meet.dashboard.selectorLabels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{# Grafana #}

{{- define "jitsi-meet.dashboard.grafana.fullname" -}}
{{ include "jitsi-meet.dashboard.fullname" . }}-grafana
{{- end -}}

{{- define "jitsi-meet.dashboard.grafana.labels" -}}
{{ include "jitsi-meet.dashboard.labels" . }}
app.kubernetes.io/component: grafana
{{- end -}} 

{{- define "jitsi-meet.dashboard.grafana.selectorLabels" -}}
{{ include "jitsi-meet.dashboard.selectorLabels" . }}
app.kubernetes.io/component: grafana
{{- end -}}