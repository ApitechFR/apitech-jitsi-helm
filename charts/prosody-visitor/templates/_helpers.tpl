{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "prosody-visitor.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "prosody-visitor.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "prosody-visitor.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "prosody-visitor.labels" -}}
helm.sh/chart: {{ include "prosody-visitor.chart" . }}
{{ include "prosody-visitor.selectorLabels" . }}
{{- if or .Values.global.jitsiVersion .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Values.global.jitsiVersion | default .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "prosody-visitor.selectorLabels" -}}
app.kubernetes.io/name: {{ include "prosody-visitor.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "prosody-visitor.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "prosody-visitor.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{- define "prosody-visitor.xmpp.server" -}}
{{-   if .Values.global.clusterDomain -}}
  {{ printf "%s-%s" .Release.Name "prosody" }}.{{ .Release.Namespace }}.svc.{{ .Values.global.clusterDomain }}
{{-   else -}}
  {{ printf "%s-%s" .Release.Name "prosody" }}.{{ .Release.Namespace }}.svc
{{- end -}}
{{- end -}}